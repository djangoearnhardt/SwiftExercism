//: [Previous](@previous)

import Foundation

/*
 By counting the number of differences between two homologous DNA strands taken from different genomes with a common ancestor, we get a measure of the minimum number of point mutations that could have occurred on the evolutionary path between the two strands.

 This is called the 'Hamming distance'.

 It is found by comparing two DNA strands and counting how many of the nucleotides are different from their equivalent in the other string.

 GAGCCTACTAACGGGAT
 CATCGTAATGACGGCCT
 ^ ^ ^  ^ ^    ^^
 The Hamming distance between these two DNA strands is 7.
 */

func hammingDistance(first: String,second: String) -> String {
    guard first.count == second.count else { return "The strands are different lengths and can't be compared." }
    let hammingDistance = zip(first, second).filter{$0 != $1}.count
    
    return "The Hamming distance between these two DNA strands is \(hammingDistance)"
}

hammingDistance(first: "GAGCCTACTAACGGGAT", second: "CATCGTAATGACGGCCT")
//: [Next](@next)
