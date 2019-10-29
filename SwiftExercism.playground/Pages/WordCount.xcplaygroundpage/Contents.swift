//: [Previous](@previous)

import Foundation

/*
 Given a phrase, count the occurrences of each word in that phrase.
 
 For example for the input `"olly olly in come free"`
 
 ```text
 olly: 2
 in: 1
 come: 1
 free: 1
 ```
 */

func wordCount(phrase: String) -> String {
    let wordArray = phrase.components(separatedBy: " ")
    var results: [String : Int] = [:]
    
    for word in wordArray {
        results[word] = (results[word] ?? 0) + 1
    }
    return "\(results)"
}

wordCount(phrase: "Olly Olly in come free")
wordCount(phrase: "Mochi get the Mochie from the Mochi")
//: [Next](@next)
