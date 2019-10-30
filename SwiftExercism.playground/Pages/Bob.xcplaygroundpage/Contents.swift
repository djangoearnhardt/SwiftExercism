//: [Previous](@previous)

import Foundation

/*
 Bob is a lackadaisical teenager. In conversation, his responses are very limited.

 Bob answers 'Sure.' if you ask him a question.

 He answers 'Whoa, chill out!' if you yell at him.

 He says 'Fine. Be that way!' if you address him without actually saying anything.

 He answers 'Whatever.' to anything else.
 */
extension String {
    var isUppercase: Bool {
        return self == self.uppercased()
    }
}
func bobResponse(to yourComment: String) -> String {
    
    switch yourComment {
    case _ where yourComment.contains("?"):
        return "Sure."
    case _ where yourComment.isUppercase:
        return "Whoa, chill out!"
    case _ where yourComment == "":
        return "Fine. Be that way!"
    default:
        return "Whatever."
    }
}

bobResponse(to: "Clean your room?")
//: [Next](@next)
