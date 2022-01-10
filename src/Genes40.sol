// SPDX-License-Identifier: GPL-3
pragma solidity ^0.8.0;

/// @notice A library to generate uint256 genes.
library Genes40 {
	function generateChromossome01(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 16) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome02(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 32) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome03(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 48) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome04(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 64) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome05(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 80) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome06(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 96) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome07(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 112) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome08(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 128) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome09(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 144) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome10(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 160) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome11(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 176) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome12(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 192) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome13(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 208) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome14(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 224) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome15(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 240) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome16(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 256) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome17(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 272) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome18(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 288) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome19(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 304) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome20(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 320) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome21(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 336) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome22(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 352) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome23(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 368) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome24(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 384) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome25(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 400) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome26(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 416) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome27(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 432) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome28(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 448) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome29(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 464) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome30(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 480) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome31(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 496) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateChromossome32(uint256 seed) internal pure returns (uint256) {
		uint256 traitSeed = (seed >> 512) & 0xFFFF;
		uint256 trait = traitSeed % 40;
		if (traitSeed >> 8 < [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40][trait]) return trait;
		return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,39][trait];
	}
	function generateGenes01(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
		}
	}
	function generateGenes02(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
		}
	}
	function generateGenes03(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
		}
	}
	function generateGenes04(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
		}
	}
	function generateGenes05(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
		}
	}
	function generateGenes06(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
		}
	}
	function generateGenes07(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
		}
	}
	function generateGenes08(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
		}
	}
	function generateGenes09(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
		}
	}
	function generateGenes10(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
		}
	}
	function generateGenes11(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
		}
	}
	function generateGenes12(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
		}
	}
	function generateGenes13(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
		}
	}
	function generateGenes14(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
		}
	}
	function generateGenes15(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
		}
	}
	function generateGenes16(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
		}
	}
	function generateGenes17(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
		}
	}
	function generateGenes18(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
			genes <<= 8;
			genes += generateChromossome18(seed);
		}
	}
	function generateGenes19(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
			genes <<= 8;
			genes += generateChromossome18(seed);
			genes <<= 8;
			genes += generateChromossome19(seed);
		}
	}
	function generateGenes20(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
			genes <<= 8;
			genes += generateChromossome18(seed);
			genes <<= 8;
			genes += generateChromossome19(seed);
			genes <<= 8;
			genes += generateChromossome20(seed);
		}
	}
	function generateGenes21(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
			genes <<= 8;
			genes += generateChromossome18(seed);
			genes <<= 8;
			genes += generateChromossome19(seed);
			genes <<= 8;
			genes += generateChromossome20(seed);
			genes <<= 8;
			genes += generateChromossome21(seed);
		}
	}
	function generateGenes22(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
			genes <<= 8;
			genes += generateChromossome18(seed);
			genes <<= 8;
			genes += generateChromossome19(seed);
			genes <<= 8;
			genes += generateChromossome20(seed);
			genes <<= 8;
			genes += generateChromossome21(seed);
			genes <<= 8;
			genes += generateChromossome22(seed);
		}
	}
	function generateGenes23(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
			genes <<= 8;
			genes += generateChromossome18(seed);
			genes <<= 8;
			genes += generateChromossome19(seed);
			genes <<= 8;
			genes += generateChromossome20(seed);
			genes <<= 8;
			genes += generateChromossome21(seed);
			genes <<= 8;
			genes += generateChromossome22(seed);
			genes <<= 8;
			genes += generateChromossome23(seed);
		}
	}
	function generateGenes24(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
			genes <<= 8;
			genes += generateChromossome18(seed);
			genes <<= 8;
			genes += generateChromossome19(seed);
			genes <<= 8;
			genes += generateChromossome20(seed);
			genes <<= 8;
			genes += generateChromossome21(seed);
			genes <<= 8;
			genes += generateChromossome22(seed);
			genes <<= 8;
			genes += generateChromossome23(seed);
			genes <<= 8;
			genes += generateChromossome24(seed);
		}
	}
	function generateGenes25(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
			genes <<= 8;
			genes += generateChromossome18(seed);
			genes <<= 8;
			genes += generateChromossome19(seed);
			genes <<= 8;
			genes += generateChromossome20(seed);
			genes <<= 8;
			genes += generateChromossome21(seed);
			genes <<= 8;
			genes += generateChromossome22(seed);
			genes <<= 8;
			genes += generateChromossome23(seed);
			genes <<= 8;
			genes += generateChromossome24(seed);
			genes <<= 8;
			genes += generateChromossome25(seed);
		}
	}
	function generateGenes26(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
			genes <<= 8;
			genes += generateChromossome18(seed);
			genes <<= 8;
			genes += generateChromossome19(seed);
			genes <<= 8;
			genes += generateChromossome20(seed);
			genes <<= 8;
			genes += generateChromossome21(seed);
			genes <<= 8;
			genes += generateChromossome22(seed);
			genes <<= 8;
			genes += generateChromossome23(seed);
			genes <<= 8;
			genes += generateChromossome24(seed);
			genes <<= 8;
			genes += generateChromossome25(seed);
			genes <<= 8;
			genes += generateChromossome26(seed);
		}
	}
	function generateGenes27(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
			genes <<= 8;
			genes += generateChromossome18(seed);
			genes <<= 8;
			genes += generateChromossome19(seed);
			genes <<= 8;
			genes += generateChromossome20(seed);
			genes <<= 8;
			genes += generateChromossome21(seed);
			genes <<= 8;
			genes += generateChromossome22(seed);
			genes <<= 8;
			genes += generateChromossome23(seed);
			genes <<= 8;
			genes += generateChromossome24(seed);
			genes <<= 8;
			genes += generateChromossome25(seed);
			genes <<= 8;
			genes += generateChromossome26(seed);
			genes <<= 8;
			genes += generateChromossome27(seed);
		}
	}
	function generateGenes28(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
			genes <<= 8;
			genes += generateChromossome18(seed);
			genes <<= 8;
			genes += generateChromossome19(seed);
			genes <<= 8;
			genes += generateChromossome20(seed);
			genes <<= 8;
			genes += generateChromossome21(seed);
			genes <<= 8;
			genes += generateChromossome22(seed);
			genes <<= 8;
			genes += generateChromossome23(seed);
			genes <<= 8;
			genes += generateChromossome24(seed);
			genes <<= 8;
			genes += generateChromossome25(seed);
			genes <<= 8;
			genes += generateChromossome26(seed);
			genes <<= 8;
			genes += generateChromossome27(seed);
			genes <<= 8;
			genes += generateChromossome28(seed);
		}
	}
	function generateGenes29(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
			genes <<= 8;
			genes += generateChromossome18(seed);
			genes <<= 8;
			genes += generateChromossome19(seed);
			genes <<= 8;
			genes += generateChromossome20(seed);
			genes <<= 8;
			genes += generateChromossome21(seed);
			genes <<= 8;
			genes += generateChromossome22(seed);
			genes <<= 8;
			genes += generateChromossome23(seed);
			genes <<= 8;
			genes += generateChromossome24(seed);
			genes <<= 8;
			genes += generateChromossome25(seed);
			genes <<= 8;
			genes += generateChromossome26(seed);
			genes <<= 8;
			genes += generateChromossome27(seed);
			genes <<= 8;
			genes += generateChromossome28(seed);
			genes <<= 8;
			genes += generateChromossome29(seed);
		}
	}
	function generateGenes30(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
			genes <<= 8;
			genes += generateChromossome18(seed);
			genes <<= 8;
			genes += generateChromossome19(seed);
			genes <<= 8;
			genes += generateChromossome20(seed);
			genes <<= 8;
			genes += generateChromossome21(seed);
			genes <<= 8;
			genes += generateChromossome22(seed);
			genes <<= 8;
			genes += generateChromossome23(seed);
			genes <<= 8;
			genes += generateChromossome24(seed);
			genes <<= 8;
			genes += generateChromossome25(seed);
			genes <<= 8;
			genes += generateChromossome26(seed);
			genes <<= 8;
			genes += generateChromossome27(seed);
			genes <<= 8;
			genes += generateChromossome28(seed);
			genes <<= 8;
			genes += generateChromossome29(seed);
			genes <<= 8;
			genes += generateChromossome30(seed);
		}
	}
	function generateGenes31(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
			genes <<= 8;
			genes += generateChromossome18(seed);
			genes <<= 8;
			genes += generateChromossome19(seed);
			genes <<= 8;
			genes += generateChromossome20(seed);
			genes <<= 8;
			genes += generateChromossome21(seed);
			genes <<= 8;
			genes += generateChromossome22(seed);
			genes <<= 8;
			genes += generateChromossome23(seed);
			genes <<= 8;
			genes += generateChromossome24(seed);
			genes <<= 8;
			genes += generateChromossome25(seed);
			genes <<= 8;
			genes += generateChromossome26(seed);
			genes <<= 8;
			genes += generateChromossome27(seed);
			genes <<= 8;
			genes += generateChromossome28(seed);
			genes <<= 8;
			genes += generateChromossome29(seed);
			genes <<= 8;
			genes += generateChromossome30(seed);
			genes <<= 8;
			genes += generateChromossome31(seed);
		}
	}
	function generateGenes32(uint256 seed) internal pure returns (uint256 genes) {
		unchecked {
			genes += generateChromossome01(seed);
			genes <<= 8;
			genes += generateChromossome02(seed);
			genes <<= 8;
			genes += generateChromossome03(seed);
			genes <<= 8;
			genes += generateChromossome04(seed);
			genes <<= 8;
			genes += generateChromossome05(seed);
			genes <<= 8;
			genes += generateChromossome06(seed);
			genes <<= 8;
			genes += generateChromossome07(seed);
			genes <<= 8;
			genes += generateChromossome08(seed);
			genes <<= 8;
			genes += generateChromossome09(seed);
			genes <<= 8;
			genes += generateChromossome10(seed);
			genes <<= 8;
			genes += generateChromossome11(seed);
			genes <<= 8;
			genes += generateChromossome12(seed);
			genes <<= 8;
			genes += generateChromossome13(seed);
			genes <<= 8;
			genes += generateChromossome14(seed);
			genes <<= 8;
			genes += generateChromossome15(seed);
			genes <<= 8;
			genes += generateChromossome16(seed);
			genes <<= 8;
			genes += generateChromossome17(seed);
			genes <<= 8;
			genes += generateChromossome18(seed);
			genes <<= 8;
			genes += generateChromossome19(seed);
			genes <<= 8;
			genes += generateChromossome20(seed);
			genes <<= 8;
			genes += generateChromossome21(seed);
			genes <<= 8;
			genes += generateChromossome22(seed);
			genes <<= 8;
			genes += generateChromossome23(seed);
			genes <<= 8;
			genes += generateChromossome24(seed);
			genes <<= 8;
			genes += generateChromossome25(seed);
			genes <<= 8;
			genes += generateChromossome26(seed);
			genes <<= 8;
			genes += generateChromossome27(seed);
			genes <<= 8;
			genes += generateChromossome28(seed);
			genes <<= 8;
			genes += generateChromossome29(seed);
			genes <<= 8;
			genes += generateChromossome30(seed);
			genes <<= 8;
			genes += generateChromossome31(seed);
			genes <<= 8;
			genes += generateChromossome32(seed);
		}
	}
}