import Foundation

/*
 Calculate the moment when someone has lived for 10^9 seconds.
 A gigasecond is 10^9 (1,000,000,000) seconds.
 */

func hasLivedForGigasecond() -> Date {
    let gigasecond = Double(10 ^ 9)
    let doubleDate = Date.init(timeIntervalSinceReferenceDate: gigasecond)
    return doubleDate
}

hasLivedForGigasecond()
