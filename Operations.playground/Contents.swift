import Cocoa

//import UIKit

let firstScore = 12
let secondScore = 4

let difference = firstScore - secondScore
let total = firstScore + secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

//OPERATORS OVERLOADING
//swift supports operator overloading, in a fancy way it does depend on the value we using

let meaningOfLIfe = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
//swift is a type safe language, whic hmeans it  won't let you mix types.

let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

var result = ["Red", "Green"] + ["Blue"]
print(result)

//var result = "Your age is " + 26
//Oops – that's not correct. This attempts to add an integer to a string.

//var result = 3 ** 8
//Oops – that's not correct. ** is not a built-in operator in Swift.

//compounD operators

var score = 95
score -= 5
print(score)


var quote = "The rain in spain falls mainly on the "
quote += "Spaniards" //compount operators available as shorthand, easy to use
print(quote)


//comparison operators

let firstScoree = 6
let secondScoree = 4

firstScoree == secondScoree
firstScoree != secondScoree

firstScore < secondScore
firstScore >= secondScore

"Taylor" <= "Swift" // they have natural alphabetical order too


enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second) // true because small will come before large in the enum case list


//conditions

let firstCard = -8
let secondCard = 10

if firstCard + secondCard == 2 {
    print("aces A Lucky!")
} else if firstCard + secondCard == 21 {
    print("Black jack")
} else {
    print("Regular cards")
}


//This is where else comes in, because it means “if the condition we checked wasn’t true, run this code instead.”
//if score > 9000 {
//    print("It's over 9000!")
//} else {
//    print("It's not over 9000!")
//}


//With that change Swift will only check score once, plus our code is shorter and easier to read too.
//
//Now imagine we wanted three messages: one when the score is over 9000, one when exactly 9000, and one when it’s under 9000. We could write this:
//
//if score > 9000 {
//    print("It's over 9000!")
//} else {
//    if score == 9000 {
//        print("It's exactly 9000!")
//    } else {
//        print("It's not over 9000!")
//    }
//}
//Again, that’s exactly fine and works just like you would hope. However, we can make the code easier to read by using else if, which lets us combine the else with the if directly after it, like this:
//
//if score > 9000 {
//    print("It's over 9000!")
//} else if score == 9000 {
//    print("It's exactly 9000!")
//} else {
//    print("It's not over 9000!")
//}

//we can only compare same data type with each otehr , if we compare diff data types, then it will fail

//combining conditions

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("both are over 18")
} else {
    print("None of them are over 18")
}

if age1 > 18 || age2 > 18 {
    print("one of them is over 18")
}


//Obviously Swift doesn’t like ambiguity like this, so it will always interpret the code as if we had written this:
//
//if (isOwner == true && isEditingEnabled) || isAdmin == true {
//    print("You can delete this post")
//}
//However, honestly it’s not a nice experience to leave this to Swift to figure out, which is why we can insert the parentheses ourselves to clarify exactly what we mean.
//
//There is no specific advice on this, but realistically any time you mix && and || in a single condition you should almost certainly use parentheses to make the result clear.


//ternary operator
let firstCards = 11
let secondCards = 10
print(firstCards == secondCards ? "Cards are the same" : "Cards are different")


//is same as
//if firstCard == secondCard {
//    print("Cards are the same")
//} else {
//    print("Cards are different")
//}


//in swiftui, ternary operator gets heavily used


//SWITCH CASE
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough // even thouse this case is not the answer, it will run surely
default:
    print("Enjoy your day!")
}


//In that example, the last case – default – is required because Swift makes sure you cover all possible cases so that no eventuality is missed off. If the weather is anything other than rain, snow, or sun, the default case will be run.

//there are three reasons why you might want to consider using switch rather than if:
//
//Swift requires that its switch statements are exhaustive, which means you must either have a case block for every possible value to check (e.g. all cases of an enum) or you must have a default case. This isn’t true for if and else if, so you might accidentally miss a case.
//When you use switch to check a value for multiple possible results, that value will only be read once, whereas if you use if it will be read multiple times. This becomes more important when you start using function calls, because some of these can be slow.
//Swift’s switch cases allow for advanced pattern matching that is unwieldy with if.
//There’s one more situation, but it’s a little fuzzier: broadly speaking, if you want to check the same value for three or more possible states, you’ll find folks prefer to use switch rather than if for legibility purposes if nothing else – it becomes clearer that we’re checking the same value repeatedly, rather than writing different conditions.

//PS: I’ve covered the fallthrough keyword because it’s important to folks coming from other programming languages, but it’s fairly rare to see it used in Swift – don’t worry if you’re struggling to think up scenarios when it might be useful, because honestly most of the time it isn’t!

//Option 1: If you want to match all other values, use default.
//This acts as a catch-all for unmatched cases in switch case.

//RANGE OPERATORS
//let sicore = 85
//switch sicore {
//case 0..<50:
//    print("you miserably failed the test with the \(sicore)")
//case 50..<85:
//    print("Ypu did ok with the \(sicore)")
//default:
//    print("You did great")
//}

//the half open range 1..<5 contains the numbers 1, 2, 3, and 4, whereas the closed range operator 1...5 contains the numbers 1, 2, 3, 4, and 5.

var names = ["Piper", "Alex", "Suzanne", "Gloria"]

print(names[1...3])
print(names[1...]) // one sided range


//SUMMARY OF 3RD PART
//Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
//There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
//You can use if, else, and else if to run code based on the result of a condition.
//Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
//If you have multiple conditions using the same value, it’s often clearer to use switch instead.
//You can make ranges using ..< and ... depending on whether the last number should be excluded or included.


//swift.count is very slow as it makes swift go and count every letter of the variable as compared to the comparison of string. so always compare string directly
//rather use
if names.isEmpty == true {
    names = ["taariq"]
}
    
// to check multiple conditions

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent == true {
    print("You can buy the game ! ")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = TransportOption.escooter

if transport == .airplane || transport == .helicopter {
    print("let's fly")
} else if transport == .bicycle {
    print("i hope there's a bike")
} else if transport == .escooter {
    print("time to ride on the sidewalks")
} else {
    print("time to get stuck in traffic")
}


// to switch statements to check multiple conditions
//if you're checking multiple similar cases in else if, jsut switch to switch case statements
 //default blokc will alweays come in the end
 

//ternary operator

let age = 18
let canVote = age >= 18 ? "Yes" : "No"
print(canVote)

let hour = 23
print(hour < 12 ? "It's before noon": " It's after noon")

let namess = ["Jayne", "Kaylee", "mal"]
let crewCount = namess.isEmpty ? "No one" : "\(namess.count) people"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = (theme == .dark) ? "black" : "white"
print(background)

// inside print , we can only write ternary and nor if else or switchtete
