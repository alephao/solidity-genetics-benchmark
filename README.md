# Solidity Genetics Benchmark

In the examples here, a gene is an `uint256`, and every chromossome is a `byte` of that `uint256`. A gene can have up to 32 chromossomes, and a chromossome can have a value between 0 and 255.

If you use that to represent an nft with many traits, evety trait is a chromossome and the value of the chromossome is the trait variant.

### Mutation of Genes

TBD

### Cross-Over of Genes

TBD

### Gene Generation

Gene generation using A.J. Walker alias method to select traits based on rarity. Note that the rarities and aliases used are not really correct, but that doesn't matter because we're just trying to get gas costs.

The table shows the gas cost for generating a gene with X chromossomes (first column). The second column onwards is the number of possible values for a chromossome. The more variants it has, the higher the cost for generating each chromossome.

| Chromossomes | 10 Variants | 20 | 30 | 40 | 50 |
| - | - | - | - | - | - |
| 01 | 1058 | 1484 | 1783 | 2207 | 2574 |
| 02 | 1793 | 2520 | 3235 | 4029 | 4822 |
| 03 | 2461 | 3630 | 4681 | 5942 | 7132 |
| 04 | 3178 | 4702 | 6162 | 7837 | 8299 |
| 05 | 3940 | 5823 | 7660 | 9825 | 10714 |
| 06 | 4618 | 6887 | 9237 | 11792 | 13035 |
| 07 | 5381 | 7977 | 10762 | 13764 | 15483 |
| 08 | 6114 | 9143 | 12323 | 15763 | 16766 |
| 09 | 6784 | 10248 | 13856 | 17873 | 19252 |
| 10 | 7512 | 11424 | 15403 | 19921 | 21844 |
| 11 | 8241 | 12499 | 16964 | 21996 | 24343 |
| 12 | 9039 | 13644 | 18606 | 24096 | 26971 |
| 13 | 9769 | 14797 | 20207 | 26243 | 29640 |
| 14 | 10459 | 15977 | 21781 | 28437 | 32322 |
| 15 | 11188 | 17116 | 23440 | 30674 | 35042 |
| 16 | 11662 | 17829 | 24326 | 31778 | 36457 |
| 17 | 12092 | 18477 | 25239 | 32999 | 37949 |
| 18 | 12545 | 19084 | 26156 | 34202 | 39406 |
| 19 | 12935 | 19757 | 27031 | 35370 | 40851 |
| 20 | 13344 | 20389 | 27888 | 36541 | 42284 |
| 21 | 13798 | 21065 | 28816 | 37742 | 43838 |
| 22 | 14254 | 21688 | 29746 | 38995 | 45355 |
| 23 | 14688 | 22336 | 30660 | 40208 | 46818 |
| 24 | 15099 | 22995 | 31553 | 41384 | 48375 |
| 25 | 15490 | 23680 | 32451 | 42585 | 49814 |
| 26 | 15969 | 24387 | 33416 | 43884 | 51394 |
| 27 | 16404 | 25005 | 34298 | 45099 | 52916 |
| 28 | 16861 | 25696 | 35272 | 46389 | 54439 |
| 29 | 17231 | 26362 | 36228 | 47619 | 56036 |
| 30 | 17754 | 27031 | 37163 | 48863 | 57611 |
| 31 | 18125 | 27723 | 38038 | 50095 | 59196 |
| 32 | 18552 | 28385 | 39013 | 51332 | 60821 |