//: [Previous](@previous)
import Foundation
/*
 When X is a name or "you".

 If the given name is "Alice", the result should be "One for Alice, one for me." If no name is given, the result should be "One for you, one for me."
 */

func twoFer(name: String) -> String {
    // Get rid of stray stray punctuation
    if name.isEmpty {
        return "One for you, one for me."
    } else {
    let cleanPunctuation = name.components(separatedBy: CharacterSet.punctuationCharacters).joined()
    // Check for whitespaces
    let cleanSpaces = cleanPunctuation.components(separatedBy: CharacterSet.whitespaces).joined()
    return "One for \(cleanSpaces), one for me"
    }
}

twoFer(name: "Alice")
twoFer(name: "")

//: [Next](@next)
