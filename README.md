# Solidity Genetics Benchmark

This repo provide a basic exemple of how to simulate genes and breed, and it also provides a benchmark of how much gas it costs to generate a gene and to breed.

In the examples provided, a gene is an `uint256`, and it is composed by chromossomes. Every chromossome is represented by a `byte` in the `uint256`, so a gene can have up to 32 chromossomes, and every chromossome has a value between 0 and 255.

To make it easier to visualise, an `uint256` represented in its hexadecimal form looks like this:

```
1 byte (or 1 chromossome) with the value of 255
0xFF

2 bytes (or 2 chromossomes) with the values of 255 and 1
0xFF01

Gene with 7 chromossomes
0x11111111111111

Gene with 32 chromossomes
0x1111111111111111111111111111111111111111111111111111111111111111
  ^^ chromossome 32         ^^ chromossome 19                   ^^ chromossome 1

```

### Mutation of Genes

Mutation is when you modify chromossomes of a gene.

#### Single Point Mutation

Single point mutation is when a single chromossome is mutated in a gene. The table below shows the gas cost for mutating a chromossome in a specific position of the gene.

We can observe that the position of the chromossome being mutated doesn't have a big impact in the gas cost.

| Chromossome Position | Gas Cost |
| -------------------- | -------- |
| 01                   | 656      |
| 02                   | 657      |
| 03                   | 592      |
| 04                   | 635      |
| 05                   | 593      |
| 06                   | 637      |
| 07                   | 614      |
| 08                   | 635      |
| 09                   | 591      |
| 10                   | 614      |
| 11                   | 591      |
| 12                   | 593      |
| 13                   | 614      |
| 14                   | 614      |
| 15                   | 636      |
| 16                   | 612      |
| 17                   | 612      |
| 18                   | 592      |
| 19                   | 592      |
| 20                   | 658      |
| 21                   | 592      |
| 22                   | 614      |
| 23                   | 659      |
| 24                   | 657      |
| 25                   | 593      |
| 26                   | 635      |
| 27                   | 615      |
| 28                   | 612      |
| 29                   | 659      |
| 30                   | 655      |
| 31                   | 634      |
| 32                   | 657      |

### Cross-Over of Genes

Cross-over are operation that generates a new gene from two other genes.

#### One Point Cross-Over

One point cross-over is when you pick the head of one gene, and the tail of the other. The "point" is where you decide it's the end of the head and the begining of the tail.

> Image from tutorialspoint.com

![One Point Cross-Over](https://www.tutorialspoint.com/genetic_algorithms/images/one_point_crossover.jpg)

The table below shows the gas cost for using one-point cross over in a specific point of the gene.

We can observer that for the algorithm used here, the gas cost goes up as the point goes more to the left. Accepting PRs for upgrades on that!

| Point in Gene | Gas Cost |
| ------------- | -------- |
| 01            | 590      |
| 02            | 612      |
| 03            | 701      |
| 04            | 770      |
| 05            | 880      |
| 06            | 924      |
| 07            | 947      |
| 08            | 1056     |
| 09            | 1080     |
| 10            | 1215     |
| 11            | 1215     |
| 12            | 1304     |
| 13            | 1351     |
| 14            | 1461     |
| 15            | 1486     |
| 16            | 1594     |
| 17            | 1660     |
| 18            | 1706     |
| 19            | 1750     |
| 20            | 1819     |
| 21            | 1952     |
| 22            | 2018     |
| 23            | 2020     |
| 24            | 2153     |
| 25            | 2218     |
| 26            | 2264     |
| 27            | 2288     |
| 28            | 2399     |
| 29            | 2443     |
| 30            | 2489     |
| 31            | 2577     |
| 32            | 2669     |

#### Uniform Cross-Over

Uniform cross over is when you walk through the chromossome positions and pick the chromossome in that position from either mom or dad.

> Image from tutorialspoint.com
![Uniform Cross-Over](https://www.tutorialspoint.com/genetic_algorithms/images/uniform_crossover.jpg)

The table below shows the gas cost for uniform cross-over in genes with a specific number of chromossomes.

| Number of Chromossomes | Gas Cost |
| ---------------------- | -------- |
| 04                     | 1024     |
| 05                     | 1166     |
| 06                     | 1349     |
| 07                     | 1467     |
| 08                     | 1562     |
| 09                     | 1712     |
| 10                     | 1887     |
| 11                     | 1981     |
| 12                     | 2167     |
| 13                     | 2327     |
| 14                     | 2402     |
| 15                     | 2608     |
| 16                     | 2726     |
| 17                     | 2868     |
| 18                     | 3007     |
| 19                     | 3125     |
| 21                     | 3449     |
| 22                     | 3522     |
| 23                     | 3663     |
| 24                     | 3870     |
| 25                     | 3987     |
| 26                     | 4103     |
| 27                     | 4245     |
| 28                     | 4429     |
| 29                     | 4525     |
| 30                     | 4686     |
| 31                     | 4804     |
| 32                     | 5087     |

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