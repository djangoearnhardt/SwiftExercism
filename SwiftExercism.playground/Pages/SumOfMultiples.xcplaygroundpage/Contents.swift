//: [Previous](@previous)

import Foundation

/*
 Given a number, find the sum of all the unique multiples of particular numbers up to
 but not including that number.

 If we list all the natural numbers below 20 that are multiples of 3 or 5,
 we get 3, 5, 6, 9, 10, 12, 15, and 18.

 The sum of these multiples is 78.
 */

func sumOfMultiples(number: Int, firstMultiple: Int, secondMultiple: Int) -> Int {
    let lowerBound: Int
    var sumOfMultiples: [Int] = []
    if secondMultiple < firstMultiple {
        lowerBound = secondMultiple
    } else {
        lowerBound = firstMultiple
    }
    for multiple in lowerBound..<number {
        if multiple % firstMultiple == 0 || multiple % secondMultiple == 0 {
            sumOfMultiples.append(multiple)
        }
    }
    return sumOfMultiples.reduce(0, +)
}

sumOfMultiples(number: 20, firstMultiple: 3, secondMultiple: 5)
//: [Next](@next)
