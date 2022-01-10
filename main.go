package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"strconv"
	"strings"
)

func gbHeader() string {
	lines := []string{
		"// SPDX-License-Identifier: GPL-3",
		"pragma solidity ^0.8.0;",
		"",
		"import {DSTest} from \"ds-test/test.sol\";",
		"import {Genetics} from \"../Genetics.sol\";",
		"",
		"contract GeneticsBenchmarkTest is DSTest {",
	}

	return strings.Join(lines, "\n")
}

func gbFooter() string {
	return "}"
}

func gbSinglePointMutation() string {
	file := []string{}
	for i := 1; i <= 32; i++ {
		lines := []string{
			fmt.Sprintf("\tfunction testBench_singlePointMutation_%02dChromossome() public {", i),
			fmt.Sprintf("\t\tGenetics.singlePointMutation(0x0, %d, 255, 1);", i),
			"\t}",
		}
		file = append(file, strings.Join(lines, "\n"))
	}
	return strings.Join(file, "\n\n")
}

func gbSinglePointMutationOverflow() string {
	file := []string{}
	for i := 1; i <= 32; i++ {
		lines := []string{
			fmt.Sprintf("\tfunction testBench_singlePointMutation_Overflow_%02dChromossome() public {", i),
			fmt.Sprintf("\t\tGenetics.singlePointMutation(0x0, %d, 255, 300);", i),
			"\t}",
		}
		file = append(file, strings.Join(lines, "\n"))
	}
	return strings.Join(file, "\n\n")
}

func gbOnePointCrossOver() string {
	file := []string{}
	for i := 1; i <= 32; i++ {
		lines := []string{
			fmt.Sprintf("\tfunction testBench_onePointCrossOver_%02d() public {", i),
			"\t\tGenetics.onePointCrossOver(",
			"\t\t\t0x1111111111111111111111111111111111111111111111111111111111111111,",
			"\t\t\t0x2222222222222222222222222222222222222222222222222222222222222222,",
			fmt.Sprintf("\t\t\t%d", i),
			"\t\t);",
			"\t}",
		}
		file = append(file, strings.Join(lines, "\n"))
	}
	return strings.Join(file, "\n\n")
}

func gbUniformCrossOver() string {
	file := []string{}
	for i := 4; i <= 32; i++ {
		if i == 20 {
			continue
		}
		lines := []string{
			fmt.Sprintf("\tfunction testBench_uniformCrossOver_%02dChromossomes() public {", i),
			"\t\tGenetics.uniformCrossOver(",
			fmt.Sprintf("\t\t\t0x%s,", strings.Repeat("1", 2*i)),
			fmt.Sprintf("\t\t\t0x%s,", strings.Repeat("2", 2*i)),
			fmt.Sprintf("\t\t\t%d,", i),
			fmt.Sprintf("\t\t\t0x%s", strings.Repeat("1", 2*i)),
			"\t\t);",
			"\t}",
		}
		file = append(file, strings.Join(lines, "\n"))
	}
	return strings.Join(file, "\n\n")
}

func generateGeneticsBenchmark() {
	parts := []string{}

	parts = append(parts, gbHeader())
	parts = append(parts, gbSinglePointMutation())
	parts = append(parts, gbSinglePointMutationOverflow())
	parts = append(parts, gbOnePointCrossOver())
	parts = append(parts, gbUniformCrossOver())
	parts = append(parts, gbFooter())

	err := ioutil.WriteFile("./src/test/GeneticsBenchmark.t.sol", []byte(strings.Join(parts, "\n")), 0644)
	if err != nil {
		log.Fatal(err)
	}
}

func generateGenes(amountOfTraits int) {
	r := []string{}
	a := []string{}
	for i := 0; i < amountOfTraits; i++ {
		r = append(r, strconv.Itoa(i+1))
		a = append(r, strconv.Itoa(i))
	}
	rarities := fmt.Sprintf("[%s]", strings.Join(r, ","))
	aliases := fmt.Sprintf("[%s]", strings.Join(a, ","))

	file := []string{
		"// SPDX-License-Identifier: GPL-3",
		"pragma solidity ^0.8.0;",
		"",
		"/// @notice A library to generate uint256 genes.",
		fmt.Sprintf("library Genes%d {", amountOfTraits),
	}

	// Generate each generateChromossome00
	for i := 1; i <= 32; i++ {
		lines := []string{
			fmt.Sprintf("\tfunction generateChromossome%02d(uint256 seed) internal pure returns (uint256) {", i),
			fmt.Sprintf("\t\tuint256 traitSeed = (seed >> %d) & 0xFFFF;", 16*i),
			fmt.Sprintf("\t\tuint256 trait = traitSeed %% %d;", amountOfTraits),
			fmt.Sprintf("\t\tif (traitSeed >> 8 < %s[trait]) return trait;", rarities),
			fmt.Sprintf("\t\treturn %s[trait];", aliases),
			"\t}",
		}
		file = append(file, strings.Join(lines, "\n"))
	}

	// Generate each generateGenes00
	for i := 1; i <= 32; i++ {
		lines := []string{
			fmt.Sprintf("\tfunction generateGenes%02d(uint256 seed) internal pure returns (uint256 genes) {", i),
			"\t\tunchecked {",
		}

		for j := 1; j <= i; j++ {
			lines = append(lines, fmt.Sprintf("\t\t\tgenes += generateChromossome%02d(seed);", j))
			if j != i {
				lines = append(lines, "\t\t\tgenes <<= 8;")
			}
		}

		lines = append(lines, "\t\t}")
		lines = append(lines, "\t}")

		file = append(file, strings.Join(lines, "\n"))
	}

	file = append(file, "}")

	err := ioutil.WriteFile(fmt.Sprintf("./src/Genes%d.sol", amountOfTraits), []byte(strings.Join(file, "\n")), 0644)
	if err != nil {
		log.Fatal(err)
	}
}

func generateGenesBenchmark(amountOfTraits int) {
	file := []string{
		"// SPDX-License-Identifier: GPL-3",
		"pragma solidity ^0.8.0;",
		"",
		"import {DSTest} from \"ds-test/test.sol\";",
		fmt.Sprintf("import {Genes%d} from \"../Genes%d.sol\";", amountOfTraits, amountOfTraits),
		"",
		fmt.Sprintf("contract Genes%dBenchmarkTest is DSTest {", amountOfTraits),
	}

	for i := 1; i <= 32; i++ {
		lines := []string{
			fmt.Sprintf("\tfunction testBench_%02dChromossomes_generateGenes%02d() public {", amountOfTraits, i),
			fmt.Sprintf("\t\tGenes%d.generateGenes%02d(89477152217924674838424037953991966239322087453347756267410168184682657981552);", amountOfTraits, i),
			"\t}",
		}
		file = append(file, strings.Join(lines, "\n"))
	}

	file = append(file, "}")

	err := ioutil.WriteFile(fmt.Sprintf("./src/test/GenesBenchmark%d.t.sol", amountOfTraits), []byte(strings.Join(file, "\n")), 0644)
	if err != nil {
		log.Fatal(err)
	}
}

func main() {
	generateGeneticsBenchmark()

	for _, n := range []int{10, 20, 30, 40, 50} {
		generateGenes(n)
		generateGenesBenchmark(n)
	}
}
