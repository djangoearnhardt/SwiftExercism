//: [Previous](@previous)

import Foundation

/*
 Given a single stranded DNA string, compute how many times each nucleotide occurs in the string.

 The genetic language of every living thing on the planet is DNA. DNA is a large molecule that is built from an extremely long sequence of individual elements called nucleotides. 4 types exist in DNA and these differ only slightly and can be represented as the following symbols: 'A' for adenine, 'C' for cytosine, 'G' for guanine, and 'T' thymine.

 Here is an analogy:

 twigs are to birds nests as
 nucleotides are to DNA as
 legos are to lego houses as
 words are to sentences as...
 */

func nucleotideCount(strand: String) -> String {
    strand.components(separatedBy: CharacterSet.whitespaces).joined()
    strand.components(separatedBy: CharacterSet.punctuationCharacters).joined()
    var aArray = 0
    var cArray = 0
    var gArray = 0
    var tArray = 0
    for char in strand {
        switch char {
        case "A": aArray += 1
        case "C": cArray += 1
        case "G": gArray += 1
        case "T": tArray += 1
        default: break
        }
    }
    return "Your DNA strand has \(aArray) A's, \(cArray) C's, \(gArray) G's, and \(tArray) T's."
}

nucleotideCount(strand: "GAGCCTACTAACGGGAT")
//: [Next](@next)
