import UIKit

/*
 on every year that is evenly divisible by 4
 except every year that is evenly divisible by 100
   unless the year is also evenly divisible by 400
 */

func leapYear(year: Int) -> Bool {
    let leapYear = ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0))
    
    return leapYear
}

leapYear(year: 1996)


