package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"strings"
)

func header() string {
	lines := []string{
		"// SPDX-License-Identifier: GPL-3",
		"pragma solidity ^0.8.0;",
		"import {DSTest} from \"ds-test/test.sol\";",
		"import {Genetics} from \"../Genetics.sol\";",
		"contract GeneticsBenchmarkTest is DSTest {",
	}

	return strings.Join(lines, "\n")
}

func footer() string {
	return "}"
}

func singlePointMutation() string {
	file := []string{}
	for i := 1; i <= 32; i++ {
		lines := []string{
			fmt.Sprintf("function testBench_singlePointMutation_%02dChromossome() public {", i),
			fmt.Sprintf("Genetics.singlePointMutation(0x0, %d, 255, 1);", i),
			"}",
		}
		file = append(file, strings.Join(lines, "\n"))
	}
	return strings.Join(file, "\n\n")
}

func singlePointMutationOverflow() string {
	file := []string{}
	for i := 1; i <= 32; i++ {
		lines := []string{
			fmt.Sprintf("function testBench_singlePointMutation_Overflow_%02dChromossome() public {", i),
			fmt.Sprintf("Genetics.singlePointMutation(0x0, %d, 255, 300);", i),
			"}",
		}
		file = append(file, strings.Join(lines, "\n"))
	}
	return strings.Join(file, "\n\n")
}

func onePointCrossOver() string {
	file := []string{}
	for i := 1; i <= 32; i++ {
		lines := []string{
			fmt.Sprintf("function testBench_onePointCrossOver_%02d() public {", i),
			fmt.Sprintf("Genetics.singlePointMutation(0x0, %d, 255, 300);", i),
			"Genetics.onePointCrossOver(",
			"0x1111111111111111111111111111111111111111111111111111111111111111,",
			"0x2222222222222222222222222222222222222222222222222222222222222222,",
			fmt.Sprintf("%d", i),
			");",
			"}",
		}
		file = append(file, strings.Join(lines, "\n"))
	}
	return strings.Join(file, "\n\n")
}

func uniformCrossOver() string {
	file := []string{}
	for i := 4; i <= 32; i++ {
		if i == 20 {
			continue
		}
		lines := []string{
			fmt.Sprintf("function testBench_uniformCrossOver_%02dChromossomes() public {", i),
			"Genetics.uniformCrossOver(",
			fmt.Sprintf("0x%s,", strings.Repeat("1", 2*i)),
			fmt.Sprintf("0x%s,", strings.Repeat("2", 2*i)),
			fmt.Sprintf("%d,", i),
			fmt.Sprintf("0x%s", strings.Repeat("1", 2*i)),
			");",
			"}",
		}
		file = append(file, strings.Join(lines, "\n"))
	}
	return strings.Join(file, "\n\n")
}

func main() {
	parts := []string{}

	parts = append(parts, header())
	parts = append(parts, singlePointMutation())
	parts = append(parts, singlePointMutationOverflow())
	parts = append(parts, onePointCrossOver())
	parts = append(parts, uniformCrossOver())
	parts = append(parts, footer())

	err := ioutil.WriteFile("./src/test/GeneticsBenchmark.t.sol", []byte(strings.Join(parts, "\n")), 0644)
	log.Fatal(err)
}
