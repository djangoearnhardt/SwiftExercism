//: [Previous](@previous)

import Foundation

/*
 Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.

 The square of the sum of the first ten natural numbers is
 (1 + 2 + ... + 10)² = 55² = 3025.

 The sum of the squares of the first ten natural numbers is
 1² + 2² + ... + 10² = 385.

 Hence the difference between the square of the sum of the first
 ten natural numbers and the sum of the squares of the first ten
 natural numbers is 3025 - 385 = 2640.
 */

func differenceOfSquares(array: [Int]) -> Int {

    let squareOfSum = (array.reduce(0, +) * array.reduce(0, +))
    let sumOfSquares = array.map({$0 * $0}).reduce(0, +)
    
    return squareOfSum - sumOfSquares
}

let firstTen = [1,2,3,4,5,6,7,8,9,10]
differenceOfSquares(array: firstTen
)
//: [Next](@next)
