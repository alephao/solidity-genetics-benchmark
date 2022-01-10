# Solidity Genetics Benchmark

In the examples here, a gene is an `uint256`, and every chromossome is a `byte` of that `uint256`. A gene can have up to 32 chromossomes, and a chromossome can have a value between 0 and 255.

If you use that to represent an nft with many traits, evety trait is a chromossome and the value of the chromossome is the trait variant.

### Mutation of Genes

TBD

### Cross-Over of Genes

TBD

### Gene Generation

Gene generation using A.J. Walker alias method to select traits based on rarity. Note that the rarities and aliases used are not really correct, but that doesn't matter because we're just trying to get gas costs.

Each table shows the gas cost (second column) to generate a gene with X chromossomes (first column). Each table uses a Y number of variants for each trait. 

#### Using 10 variants for each trait

| Chromossomes | gas |
| 01 | 1058 |
| 02 | 1793 |
| 03 | 2461 |
| 04 | 3178 |
| 05 | 3940 |
| 06 | 4618 |
| 07 | 5381 |
| 08 | 6114 |
| 09 | 6784 |
| 10 | 7512 |
| 11 | 8241 |
| 12 | 9039 |
| 13 | 9769 |
| 14 | 10459 |
| 15 | 11188 |
| 16 | 11662 |
| 17 | 12092 |
| 18 | 12545 |
| 19 | 12935 |
| 20 | 13344 |
| 21 | 13798 |
| 22 | 14254 |
| 23 | 14688 |
| 24 | 15099 |
| 25 | 15490 |
| 26 | 15969 |
| 27 | 16404 |
| 28 | 16861 |
| 29 | 17231 |
| 30 | 17754 |
| 31 | 18125 |
| 32 | 18552 |

#### Using 20 variants for each trait

| Chromossomes | gas |
| 01 | 1484 |
| 02 | 2520 |
| 03 | 3630 |
| 04 | 4702 |
| 05 | 5823 |
| 06 | 6887 |
| 07 | 7977 |
| 08 | 9143 |
| 09 | 10248 |
| 10 | 11424 |
| 11 | 12499 |
| 12 | 13644 |
| 13 | 14797 |
| 14 | 15977 |
| 15 | 17116 |
| 16 | 17829 |
| 17 | 18477 |
| 18 | 19084 |
| 19 | 19757 |
| 20 | 20389 |
| 21 | 21065 |
| 22 | 21688 |
| 23 | 22336 |
| 24 | 22995 |
| 25 | 23680 |
| 26 | 24387 |
| 27 | 25005 |
| 28 | 25696 |
| 29 | 26362 |
| 30 | 27031 |
| 31 | 27723 |
| 32 | 28385 |

#### Using 30 variants for each trait

| Chromossomes | gas |
| 01 | 1783 |
| 02 | 3235 |
| 03 | 4681 |
| 04 | 6162 |
| 05 | 7660 |
| 06 | 9237 |
| 07 | 10762 |
| 08 | 12323 |
| 09 | 13856 |
| 10 | 15403 |
| 11 | 16964 |
| 12 | 18606 |
| 13 | 20207 |
| 14 | 21781 |
| 15 | 23440 |
| 16 | 24326 |
| 17 | 25239 |
| 18 | 26156 |
| 19 | 27031 |
| 20 | 27888 |
| 21 | 28816 |
| 22 | 29746 |
| 23 | 30660 |
| 24 | 31553 |
| 25 | 32451 |
| 26 | 33416 |
| 27 | 34298 |
| 28 | 35272 |
| 29 | 36228 |
| 30 | 37163 |
| 31 | 38038 |
| 32 | 39013 |

#### Using 40 variants for each trait

| Chromossomes | gas |
| 01 | 2207 |
| 02 | 4029 |
| 03 | 5942 |
| 04 | 7837 |
| 05 | 9825 |
| 06 | 11792 |
| 07 | 13764 |
| 08 | 15763 |
| 09 | 17873 |
| 10 | 19921 |
| 11 | 21996 |
| 12 | 24096 |
| 13 | 26243 |
| 14 | 28437 |
| 15 | 30674 |
| 16 | 31778 |
| 17 | 32999 |
| 18 | 34202 |
| 19 | 35370 |
| 20 | 36541 |
| 21 | 37742 |
| 22 | 38995 |
| 23 | 40208 |
| 24 | 41384 |
| 25 | 42585 |
| 26 | 43884 |
| 27 | 45099 |
| 28 | 46389 |
| 29 | 47619 |
| 30 | 48863 |
| 31 | 50095 |
| 32 | 51332 |

#### Using 50 variants for each trait

| Chromossomes | gas |
| 01 | 2574 |
| 02 | 4822 |
| 03 | 7132 |
| 04 | 8299 |
| 05 | 10714 |
| 06 | 13035 |
| 07 | 15483 |
| 08 | 16766 |
| 09 | 19252 |
| 10 | 21844 |
| 11 | 24343 |
| 12 | 26971 |
| 13 | 29640 |
| 14 | 32322 |
| 15 | 35042 |
| 16 | 36457 |
| 17 | 37949 |
| 18 | 39406 |
| 19 | 40851 |
| 20 | 42284 |
| 21 | 43838 |
| 22 | 45355 |
| 23 | 46818 |
| 24 | 48375 |
| 25 | 49814 |
| 26 | 51394 |
| 27 | 52916 |
| 28 | 54439 |
| 29 | 56036 |
| 30 | 57611 |
| 31 | 59196 |
| 32 | 60821 |