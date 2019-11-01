//: [Previous](@previous)

import Foundation

/*
 Given students' names along with the grade that they are in, create a roster for the school.

 In the end, you should be able to:

 Add a student's name to the roster for a grade
 "Add Jim to grade 2."
 "OK."
 Get a list of all students enrolled in a grade
 "Which students are in grade 2?"
 "We've only got Jim just now."
 Get a sorted list of all students in all grades. Grades should sort as 1, 2, 3, etc., and students within a grade should be sorted alphabetically by name.
 "Who all is enrolled in school right now?"
 "Grade 1: Anna, Barb, and Charlie. Grade 2: Alex, Peter, and Zoe. Grade 3…"
 Note that all our students only have one name. (It's a small town, what do you want?)

 For bonus points
 Did you get the tests passing and the code clean? If you want to, these are some additional things you could try:

 If you're working in a language with mutable data structures and your implementation allows outside code to mutate the school's internal DB directly, see if you can prevent this. Feel free to introduce additional tests.
 Then please share your thoughts in a comment on the submission. Did this experiment make the code better? Worse? Did you learn anything from it?
 */
var studentList: [Int: [String]] = [:]
func add(student: String?, and grade: Int?) -> String {
    if let student = student, let grade = grade {
        var names = studentList[grade] ?? []
        names.append(student)
        studentList.updateValue(names, forKey: grade)
    }
    for items in studentList.sorted(by: {$0.0 < $1.0}) {
        print("Grade \(items.0): \(items.1.joined(separator: ","))")
    }
    return "Completed"
}

//var studentList: [String : Int] = [:]
//func add(student: String?, and grade: Int?) -> String {
//    var names: [String] = []
//    if let student = student, let grade = grade {
//        studentList[student] = grade
//    }
//    var gradeCount = 1
//    guard let highestGrade = studentList.values.max() else { return "Your school is empty" }
//    while gradeCount <= highestGrade {
//        for (student, grade) in studentList {
//            if grade == gradeCount {
//                names.append(student)
//            }
//            print("Grade \(gradeCount): \(names.joined(separator: ","))")
//            gradeCount += 1
//
//        }
//    }
//    return "Complete"
//}

add(student: "Bob", and: 5)
add(student: "Sam", and: 8)
add(student: "Mochi", and: 2)
add(student: "Michelle", and: 12)
//: [Next](@next)
