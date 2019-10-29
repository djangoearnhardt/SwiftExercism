//: [Previous](@previous)

import Foundation

/*
 Given a DNA strand, return its RNA complement (per RNA transcription).

 Both DNA and RNA strands are a sequence of nucleotides.

 The four nucleotides found in DNA are adenine (**A**), cytosine (**C**),
 guanine (**G**) and thymine (**T**).

 The four nucleotides found in RNA are adenine (**A**), cytosine (**C**),
 guanine (**G**) and uracil (**U**).

 Given a DNA strand, its transcribed RNA strand is formed by replacing
 each nucleotide with its complement:

 * `G` -> `C`
 * `C` -> `G`
 * `T` -> `A`
 * `A` -> `U`
 */

func transcription(DNA: String) -> String {
    var RNA: String = ""
    for strand in DNA {
        switch strand {
        case "G": RNA += "C"
        case "C": RNA += "G"
        case "T": RNA += "A"
        case "A": RNA += "U"
        default: RNA += ""
        }
    }
    return RNA.components(separatedBy: CharacterSet.whitespaces).joined()
}

transcription(DNA: "GCTA")
transcription(DNA: "UGCACCAGAAUU")
transcription(DNA: "XXX")

//: [Next](@next)
