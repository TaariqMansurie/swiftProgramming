import Cocoa // brings in alot of code by apple

var greeting = "Hello, playground" ;// variable starts with var, greeting is the variable name, = means asigning the values

var name = "Ted"

name = "rebecca"

name = "taariq"

print(name);

let character = "daphne" // just like js, we can't change this variable's value, it's a constant
//character = "eloise"
//character = "fran garcia"

print(character)

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam" //swift doesn't cares about case sensitiveness
print(playerName)

let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How manyy roads shall a man walk on?"

//always try using let keyword as even if you tend to make a mistake in changing the valuew of the variable whom you wouldn't like to be changed, you will always get an heads up in xcode

//strings
//al the stringsxz must start from double quotes and end with one.

let actor = "Daniel washington"

let filename = "paris.jpg"
let result = " you winm :D"

//adding double quotes in a string
let quote = "Then he tapped a sign saying \"Believe\" and walked away." // always use backslash before quotes

//no realistic length of strings is there
//multi level string

//let movie = " a day in
//the life of an apple
//engineer
//"

//above piece of lines is not allowed in a amulti line string
//instead use

let movie = """
A day in the
life of an
apple engineer
""" // a multi line string's text/content shouyld begin on a new line, so quotes should always be on the new/diff line than content
let nameLength = actor.count
print(nameLength)

print(result.uppercased())

    // if you're asking swift to read some data, you don't need round parenthesis,
// but if you're awsking swift to do some work to do for you, you have to mention ()
 
print(movie.hasPrefix("A day"))
print(filename.hasSuffix("paris.jpg"))

// make sure and keep in mind strings are very powerful in swift language, so it's case sensitive, make sure to include all the necessary capital letters which are there

// how to store whole numbers

let score = 10
let reallyBig = 1000_000_000 // or normally 1000000000, swift will read it as 1000000000

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

//but rather declaring thesevariables every time, we can jsut use the one variable that is score
var counter = 10
counter += 5 //or  counter = counter + 5
print(counter)

counter *= 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 2))


//storing of decimal nummbers
let number2 = 0.1 + 0.2
print(number2)

//whenever we make a floating point number, swift considers it as a double
//in this case swift allocated twice the amount of data as older languages might do hence
//	double as double the data as it can store absolutely massive nos or increasingly tiny numbners
//swift considers double data as completely diff than int
let a = 1
let b = 2.0
//let c = a + b //here swift won't elt us mix dsata of twoo different data types
let c = a + Int(b) + a // or let c = Double(a) + b

let double1 = 3.1
let double2 = 3131.313131
let double3 = 3.0
let int1 = 3

var name1 = "the Rock"
/*name1 = 56*/ // not possible that's why name1 = "can be any other name" but not differnet data types as it is of the same datatype, so swift disallows you to do that
name1 = "John Cena"

var rating = 5.0
rating *= 2
//cg float and doubles are handled by swift, so no need to worry about it

//joining string

let first = "Hello,"
let second = "World!"
let final = first + second

let people = "Haters "
let action = "hate"
let lyric = people + "gonna " + action


let luggageCode = "112" + "5" // 5 will be appeneded to 112 making it 1125

//string interpolation is there

let quote1 = "Then he tapped a sign saying \"Believe\" and walked away."

let namee = "Taylor"
let age = 26
let message = "hello, my name is \(namee) and I'm \(age) years old."
print(message)
 
