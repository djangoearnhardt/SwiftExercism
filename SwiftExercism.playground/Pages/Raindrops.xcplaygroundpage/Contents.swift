//: [Previous](@previous)

import Foundation

/*
 Convert a number to a string, the contents of which depend on the number's factors.

 If the number has 3 as a factor, output 'Pling'.
 If the number has 5 as a factor, output 'Plang'.
 If the number has 7 as a factor, output 'Plong'.
 If the number does not have 3, 5, or 7 as a factor, just pass the number's digits straight through.
 */

func raindrops(from number: Int) {
    var factorArray: [Int] = []
    for divisor in 1...number {
        if number % divisor == 0 {
            factorArray.append(divisor)
        }
    }
    for number in factorArray {
        switch number {
        case _ where number == 3: print("Pling")
        case _ where number == 5: print("Plang")
        case _ where number == 7: print("Plong")
        default: print("\(number)")
        }
    }
}

raindrops(from: 21)

//: [Next](@next)
