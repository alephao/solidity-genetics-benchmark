

# Solidity Genetics Benchmark

Este repositorio proporciona un ejemplo básico de cómo simular genes y realizar la cría, y también ofrece un benchmark sobre cuánto gas cuesta generar un gen y cruzar genes.

En los ejemplos proporcionados, un gen es un `uint256`, y está compuesto por cromosomas. Cada cromosoma está representado por un `byte` en el `uint256`, por lo que un gen puede tener hasta 32 cromosomas, y cada cromosoma tiene un valor entre 0 y 255.

Para facilitar la visualización, un `uint256` representado en forma hexadecimal se ve así:

```
1 byte (o 1 cromosoma) con el valor de 255
0xFF

2 bytes (o 2 cromosomas) con los valores de 255 y 1
0xFF01

Gen con 7 cromosomas
0x11111111111111

Gen con 32 cromosomas
0x1111111111111111111111111111111111111111111111111111111111111111
  ^^ cromosoma 32         ^^ cromosoma 19                   ^^ cromosoma 1

```

### Mutación de Genes

La mutación ocurre cuando se modifican los cromosomas de un gen.

#### Mutación en un Solo Punto

La mutación en un solo punto ocurre cuando un único cromosoma es mutado en un gen. La tabla siguiente muestra el costo en gas para mutar un cromosoma en una posición específica del gen.

Podemos observar que la posición del cromosoma que se muta no tiene un gran impacto en el costo de gas.

| Posición del Cromosoma | Costo en Gas |
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

### Cruce de Genes

El cruce es una operación que genera un nuevo gen a partir de dos genes existentes.

#### Cruce en un Solo Punto

El cruce en un solo punto consiste en tomar la parte inicial de un gen y la parte final del otro. El "punto" es donde se decide que termina la cabeza y comienza la cola.

> Imagen de tutorialspoint.com

![One Point Cross-Over](https://www.tutorialspoint.com/genetic_algorithms/images/one_point_crossover.jpg)

La tabla siguiente muestra el costo en gas para utilizar un cruce en un solo punto en una posición específica del gen.

Podemos observar que, para el algoritmo utilizado aquí, el costo en gas aumenta a medida que el punto se desplaza más hacia la izquierda. ¡Aceptamos PRs para mejoras al respecto!

| Punto en el Gen | Costo en Gas |
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

#### Cruce Uniforme

El cruce uniforme consiste en recorrer las posiciones de los cromosomas y seleccionar el cromosoma de esa posición ya sea del padre o de la madre.

> Imagen de tutorialspoint.com
![Uniform Cross-Over](https://www.tutorialspoint.com/genetic_algorithms/images/uniform_crossover.jpg)

La tabla siguiente muestra el costo en gas para un cruce uniforme en genes con un número específico de cromosomas.

| Número de Cromosomas | Costo en Gas |
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

### Generación de Genes

Generación de genes utilizando el método de alias de A.J. Walker para seleccionar rasgos basándose en la rareza. Tenga en cuenta que las rarezas y alias utilizados no son completamente correctos, pero eso no importa porque solo estamos intentando obtener los costos de gas.

La tabla muestra el costo en gas para generar un gen con X cromosomas (primera columna). Desde la segunda columna en adelante se indica el número de valores posibles para un cromosoma. Cuantas más variantes tenga, mayor será el costo para generar cada cromosoma.

| Cromosomas | 10 Variantes | 20 | 30 | 40 | 50 |
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
