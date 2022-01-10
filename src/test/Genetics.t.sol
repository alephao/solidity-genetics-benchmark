// SPDX-License-Identifier: GPL-3
pragma solidity ^0.8.0;

import {DSTest} from "ds-test/test.sol";
import {Genetics} from "../Genetics.sol";

contract GeneticsTest is DSTest {
  function testSinglePointMutation_1stChromossome() public {
    assertEq(Genetics.singlePointMutation(0x0, 1, 10, 1), 0x1); // add 1
    assertEq(Genetics.singlePointMutation(0x0, 1, 10, 10), 0xA); // add 10
    assertEq(Genetics.singlePointMutation(0x0, 1, 10, 16), 0x5); // overflow
  }

  function testSinglePointMutation_2ndChromossome() public {
    assertEq(Genetics.singlePointMutation(0x0, 2, 10, 1), 0x100); // add 1
    assertEq(Genetics.singlePointMutation(0x0, 2, 10, 10), 0xA00); // add 10
    assertEq(Genetics.singlePointMutation(0x0, 2, 10, 16), 0x500); // overflow
  }

  function testSinglePointMutation_3rdChromossome() public {
    assertEq(Genetics.singlePointMutation(0x0, 3, 10, 1), 0x10000); // add 1
    assertEq(Genetics.singlePointMutation(0x0, 3, 10, 10), 0xA0000); // add 10
    assertEq(Genetics.singlePointMutation(0x0, 3, 10, 16), 0x50000); // overflow
  }

  function testSinglePointMutation_4thChromossome() public {
    assertEq(Genetics.singlePointMutation(0x0, 4, 10, 1), 0x1000000); // add 1
    assertEq(Genetics.singlePointMutation(0x0, 4, 10, 10), 0xA000000); // add 10
    assertEq(Genetics.singlePointMutation(0x0, 4, 10, 16), 0x5000000); // overflow
  }

  function testOnePointCrossOver() public {
    assertEq(Genetics.onePointCrossOver(0x11111111, 0x22222222, 0), 0x11111122);
    assertEq(Genetics.onePointCrossOver(0x11111111, 0x22222222, 1), 0x11112222);
    assertEq(Genetics.onePointCrossOver(0x11111111, 0x22222222, 2), 0x11222222);
  }
}
