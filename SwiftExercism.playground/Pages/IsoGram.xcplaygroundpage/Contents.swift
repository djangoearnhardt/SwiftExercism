//: [Previous](@previous)

import Foundation
class Isogram {
    class func isIsogram(_ word: String) -> Bool {
        let cleaned = word.lowercased().components(separatedBy: CharacterSet.punctuationCharacters).joined()
        // Set turns string into a collection of unique charaters
        let uniqueCleaned = Set(cleaned)
        // return the count of the original cleaned word and unique cleaned word
        return cleaned.count == uniqueCleaned.count
    }
}

Isogram.isIsogram("SamsS")


//: [Next](@next)
