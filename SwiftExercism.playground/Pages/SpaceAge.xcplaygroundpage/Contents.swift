//: [Previous](@previous)

import Foundation

/*
 Given an age in seconds, calculate how old someone would be on:

 Earth: orbital period 365.25 Earth days, or 31557600 seconds
 Mercury: orbital period 0.2408467 Earth years
 Venus: orbital period 0.61519726 Earth years
 Mars: orbital period 1.8808158 Earth years
 Jupiter: orbital period 11.862615 Earth years
 Saturn: orbital period 29.447498 Earth years
 Uranus: orbital period 84.016846 Earth years
 Neptune: orbital period 164.79132 Earth years
 So if you were told someone were 1,000,000,000 seconds old, you should be able to say that they're 31.69 Earth-years old.
 */

func interstellarAgeIn(seconds: Double, on planet: String) -> String {

    let earthBase = ((seconds / 31557600) * 100).rounded() / 100
    
    switch planet.lowercased().components(separatedBy: CharacterSet.punctuationCharacters).joined() {
    case "earth": return "You're \(earthBase) Earth-years old"
    case "mercury": return "You're (\(earthBase * 0.2408467) Earth-years old"
    case "venus": return "You're \(earthBase * 0.61519726) Earth-years old"
    case "mars": return "You're \(earthBase * 1.8808158) Earth-years old"
    case "jupiter": return "You're \(earthBase * 11.862615) Earth-years old"
    case "saturn": return "You're \(earthBase * 29.447498) Earth-years old"
    case "uranus": return "You're \(earthBase * 84.016846) Earth-years old"
    case "neptune": return "You're \(earthBase * 164.79132) Earth-years old"
    default: return "Your planet needs to be in the Milky Way for this exercise."
    }
}

interstellarAgeIn(seconds: 1000000000, on: "EARTH*&*")
//: [Next](@next)
