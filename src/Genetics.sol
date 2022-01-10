// SPDX-License-Identifier: GPL-3
pragma solidity ^0.8.0;

/// @title Genetics
/// @author Aleph Retamal <alephao.com>
/// @notice A library to manipulate uint256 genes.
///
/// ### Warning
///
/// This lib is for studying purposes, not to be imported in other projects.
/// You can use this as a base for your Genetics, copy the code and
/// modify it for your specific purpose.
library Genetics {
    /// @dev increments a specific chromossome in a gene by 'increment'. If it overflows, it goes back to 0.
    /// For example, if chromossome value is 9, max value is 10, and increment is 4, that results in 2.
    /// @param gene the gene that will be mutated
    /// @param chromossomePosition the position of the chromossome mutating. Should be > 0.
    /// @param maxValueForChromossome the max value of a chromossome (0~255)
    /// @param increment how much the chromossome will mutate
    /// @return the new gene with the mutated chromossome
    function singlePointMutation(
        uint256 gene,
        uint256 chromossomePosition,
        uint256 maxValueForChromossome,
        uint256 increment
    ) internal pure returns (uint256) {
        require(chromossomePosition > 0);
        require(maxValueForChromossome > 0 && maxValueForChromossome <= 255);
        require(increment > 0);
        unchecked {
            // If it's in position 2, shift 1 byte. Position 3, shift 2 bytes...
            uint256 shift = (chromossomePosition - 1) * 8;

            // Create a mask to get only the chromossome we are intereseted in mutating
            uint256 mask = 0xFF << shift;

            // Remove all other chromossomes
            uint256 chromossome = gene & mask;

            // Shift bytes to the least significant value so we can sum
            uint256 chromossomeValue = chromossome >> shift;

            // Mutate the chromossome, it should be less than the maxValueForChromossome
            uint256 newChromossomeValue = (chromossomeValue + increment) %
                (maxValueForChromossome + 1);

            // Shift the chromossome back to it's original position
            uint256 mutatedChromossome = newChromossomeValue << shift;

            // Get a gene with all the other chromossomes, only excluding the one we're mutating
            uint256 allOtherChromossomes = ~mask & gene;

            // Return the merge of all the other chromossomes with the newly mutated gene
            return allOtherChromossomes | mutatedChromossome;
        }
    }

    /// @dev One point cross-over two uint256
    /// @param lhs genes that will be used at the left hand side
    /// @param rhs genes that will be used at the right hand side
    /// @param point where to divide the bytes between the first and last byte non-inclusive
    /// should be a value from 0 to {amount of chromossomes in gene} and will cut at the
    /// left hand side of the bytes shown as numbers: 0xFF001122334455FF
    ///                                                   ^^^^^^^^^^^^
    function onePointCrossOver(
        uint256 lhs,
        uint256 rhs,
        uint256 point
    ) internal pure returns (uint256) {
        unchecked {
            uint256 mask = 0xFF;

            // Create the mask
            for (uint256 i = 0; i < point; i++) {
                mask <<= 8;
                mask |= 0xFF;
            }

            return (lhs & ~mask) | (rhs & mask);
        }
    }

    /// @dev Uniform cross-over two genes
    /// @param mom genes from mom
    /// @param dad genes from dad
    /// @param numberOfChromossomes how many chromossomes a gene has, should be between 1 and 32
    /// @param seed the seed is used to pick chromossomes between dad and mom.
    /// @return child the child gene, an uint256 with the result of the cross-over
    function uniformCrossOver(
        uint256 mom,
        uint256 dad,
        uint256 numberOfChromossomes,
        uint256 seed
    ) internal pure returns (uint256 child) {
        require(numberOfChromossomes > 0 && numberOfChromossomes <= 32);
        unchecked {
            for (uint256 i = 0; i < numberOfChromossomes; i++) {
                // Choose mom or dad to pick the chromossome from
                // If the byte on seed is even, pick mom
                uint256 chromossome = ((seed >> (8 * i)) & 0xFF) % 2 == 0
                    ? mom
                    : dad;

                // Create a mask to pick only the current chromossome
                // E.g.: 3rd byte = 0xFF0000
                uint256 mask = 0xFF << (8 * i);

                // Add chromossome to the child
                child |= (chromossome & mask);
            }
        }
    }
}
