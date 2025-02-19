import Cocoa // having go through arrays

var beatles=["John","Paul","David","Ted"]
beatles.append("Adrian")
beatles.append("Taariq")

print(beatles[4])

//we can't mix diff data types with others
//we can use + with same datatype and nor diff ones

var scores = Array<Int>() // arrays taht specifically hold integers, with the parenthesis we can always customize this array the way we want
scores.append(100)
scores.append(50)
scores.append(85)
print(scores)


var albums = Array<String>()
albums.append("Folklore")
albums.append("Rolling stones")
albums.append("Fearless")
print(albums)

//or other way to write it
var india = [String]()
india.append("Hyderabad")
india.append("Mumbai")
print(india)

var characters = ["lana", "pam","ray", "sterling"]
print(characters.count)
print(characters)
characters.removeAll()
print(characters.count)
characters.append("Dominic Toretto")
print(characters.count)
print(characters)

let bondMovies = ["Casino Royale", "spectre","No time to die"]
//print(bondMovies.contains("Frozen"))

let cities = ["London","tokyo","Rome","Budapest"] // will sort according to the the alphabets
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden", "Trump"]
let reversePresidents = presidents.reversed()
print(reversePresidents) // it's not reversed , so its shown to us in an original order but it is stored in a reverse collection of arrays


// now going through dictionaries -- how to store and find data in dictionaries

var employee = ["taylor swift", "singer", "nashville"]
print("name: \(employee[0])")
employee.remove(at: 1)
print("job title: \(employee[1])")
//print("location: \(employee[2])")
//but this is not always good so if we remove any leement last element would be removed as they will move to the empty locatoin and no gaps wiill be tehre  so here the second elment from posn 1 get removed so at posn 2, there will be no element

//corect way to do is,
let employee2 = [
    "name": "Taylor Swift",
    "job":"Singer",
    "location":"Nashville"
] // it looks like a json

print(employee2["name", default:"Unkown"]) // you mioght actually get some data back or not , that's why swift calls it optional
print(employee2["job", default:"Unknown"])
print(employee2["location", default:"Unknown"])


let hasGraduated = [
    "Eric": false,
    "Maeve":true,
    "Otis":false
]
print(hasGraduated["Eric", default:false])

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unkown"])

//dictionary with key value pair , dictionaries don;t allow the same keys, but it will be updated with the latest value
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Naal"] = 216
heights["Lebron James"] = 296

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Pengiun"
archEnemies["Batman"] = "Harley Quinn"

//above two are dictionaries


//now we will start with sets for fast data lookup
let actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicholas Cage",
    "Samuel L Jackson",
    "Tom Cruise",
    "Tom Cruise",
    "Denzel Washington"
])

//SETS
//sets won't print repitive data like array, it will only take one entry and eliminate the other data
print(actors)

//creating sets is much like creating arrays, but it doesn't allows multiple entries of the same name - basically duplicates, it just allows unique elements
// we might see it every time in a different order, it's not fixedd

var actor = Set<String>()
actor.insert("Danzel Washington")
actor.insert("Tom Cruise")
actor.insert("dom Toretto")
actor.insert("Captain ameerica")

print(actor)


//searching through a aset is super fast and it's the most ideal and optimized solution to do


//how to create an enum and use enums

var selected = "Monday"
selected = "Tuesday"
selected = "January"
selected = "Friday "

//this friday has a space, this is different than friday without space
//here enums come in

//enums have a specific range which we usually mention
enum Weekday{
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday, Sunday
}

var day = Weekday.Monday
day = Weekday.Tuesday // enums are safe to work with but also faster to work with, swift will store as monday as [0], tuesday[1] , and so on
day = Weekday.Thursday
day = .Saturday // swift here means what comes before the dot, it is Weekend.Saturday as it was uised recentlyt above and also it doesn't have any other enum( the case)

//how to type annotations in swift
//swift alrady knows what type of data is in the variable or constant without mentioning it based on what we asign to it
//someitmes we don't want to assign the data already, sometimes we want to override the valiue and that's where annotations come in

let surname = "Lasso" // here too, swift already knows that surname is going to bee a string, so no need to explicitly mention it
var score = 0       // here swift already knows what is var score as we don't have to mention int specifically before the variable name like java
 
// in the backend it looks like,
//let surname: String = "Lasso"
//var score : Int = 0

// but here above, if we mention the type then later too it has to be of the same data type even if decide on changing it,
// that's the reason why we don't explicitly mention the type of it

// if we want to specificly mention a decimal number , then we should also add the datattype to it, so that it can be clear for swifft to understand

let playerName: String = "Roy"
let luckyNumber: Int = 7
let pi: Double = 3.141
var isAuthenticated: Bool = true
var aalbums : [String] = ["Red", "Rollionmg stones"]
var user: [String:String] = ["taariq":"taariq_80"]
var books: Set<String> = Set([
"The bluest eye",
"foundation",
"girlm woman, other"
]) // set of a strings

var soda: [String] = ["Coke", "Pepsi", "Irn-bru"] //here the type annotation is not needed as sweift can already see that var soda is a array of a string, that can always change if user wants to update the entries of it

var teams: [String] = [String]() // var teams is an array of strings & this is how empty array is defined in such a way
// but in an aempty array, round parenthesis are required as we can always customize the array as it's already empty
var citiess: [String] = []// it can also be written like this
var clues = [String]() // all will make an empty array
//values of enums have the same anmnotations as the enums itself


enum UIStyle {
    case light, dark, systemDefault
}

var style = UIStyle.light
style = .dark
style = .systemDefault

//when to use type annotaitons (or type inference) anda use it as much as possible
//usually with constants we don't have a value yet, it may get passed in late
//so we can have an empty constatn

let username:String
//toom uch logic , that is complex
username = "@taariq809"
//lots of more complex code
print(username) // if above username value is not assigned, swift is very clear that it will always make sure some or the other value is passed atleast once so that it gets printed, or else it won't be printed if teh value is not passed, the code will not run on its own
//this kind of code erquires type annotation, as there is no value ionitially, :string is the type annotaiton
//there is one golden rule in saawiaft, it mist always know what's the datatype of each and every thing

//let scoress: Int ="Zero" // here codfe won't be built at any point as the annotation is Int to the variable scoress, but a string is passed as it's value


//summary : complex data
//arrays store many valuyes and read them using indices
//dict stores many values, and reads them using keys we specify
//sets store many values too, but we don't choose their ordewr
// enums craeete our own types to specify a range of acceptable values
//swift uses type inference to figure what data we're stroing
//its also possible to tuse type annotation to force a aprticular type


//checkpoint 2
//create an array of strings then write some code that prints the no of items in the array and also the no of unique items inb the array

var cricketTeams: [String]  = ["Australia", "Bangladesh", "Denmark", "England", "Ghana", "Hungary","India","Mumbai Indians", "Pakistan", "New Zealand", "Nepal", "Australia"]
print(cricketTeams.count)

let uniqueTeams = Set(cricketTeams)
print(uniqueTeams) //automatically
 
//seems like tuples and dictionaries are the same in swift
//but tuples holda fix set of things and can't be changed later on, they also hold n number of values, but array values can be changed

//another good part of the tuple is , each valiue is created by us manually, so we can also give dfifferent datatypes for it to hold where as in arrays, it has to be of the same datatype

// so dictionary can store values like a typle but can change values like array.. so it's an ultimate thing to use

// tuple values can always be accessed using numerical position but it mustn't be always unique
//Tuples store values together in a single value.
//Arrays can hold any number of items, including duplicates, and preserve their order. Sets are preferred when you don't want duplicate items and when order doesn't matter. Tuples are preferred when you want limited items of specific types and names.


//dicctionary always uses key to make calls as syntax of ratings = [1:Bad, 2:ok] so here 1,2 is key and bad,ok are value

//always dictionaries uses ,default keyword with a value on the right hand side of colon

//dictionary values can always take or check for values which are not there, and also we can search with the default keyword, or without(not necessary)

//var favoriteColors = Dictionary<String, String>() an empty dictionary can me made in this way

//You must tell Swift what kind of data the array will hold.

//var wines = Dictionary<String: String>()
//The correct syntax is either Dictionary<String, String>() or [String: String]().

//for sets
//var friends = Set[String]()
//The correct syntax is Set<String>().

//Option 1: Average student exam scores.
//These are best stored as doubles.



//Option 2: Suits in a deck of cards.
//There are only four suits in a deck of cards, so they make a great choice for enums.

//enums with associated values
//Option 1:
//
//enum Building { case skyscraper(floors: Int) }
//This creates a case called skyscraper with the associated value floors.
//

//enum Sport { case running(distance: Int) }
//This creates a case called running with the associated value distance.


//enum CharacterClass { case paladin(level: Int) }
//This creates a case called paladin with the associated value level.

//enum with raw values
//Question 1/6: Which of these statements about enums with raw values are true?
//Hint: Raw values let us give each of our enum cases a value so they are more than just names.


//Option 1: Raw values make enums into dictionaries.
//wrong Enums with raw values are still just enums.
//
//Option 2: You can give each case specific values if you want.
//right This is optional, but it gives us fine-grained control when needed.

//Option 1: Integer raw values count from 0 automatically.
//You can modify this to something specific if you want.
//
//Option 2: If you give one case a value you must give them all values.
//Swift is able to infer values based on the ones you provide.


//Option 1: Raw values let us create enum values dynamically.
//We can create an enum from its raw value.
//
//Option 2: Raw values can't be used directly.
//You can read them if you want, or create enum instances from them.

//complex types: summmary
//Option 1:
//
//var fibonacci = (1, 1, 2, 3, 5, 8)
//This creates a tuple.
//
//Option 2:
//
//var repeatCount = [String: Int]
//This is invalid Swift – it needs parentheses after [String: Int].

//
//var lotteryNumbers = Set(11, 23, 44)
//To create a set you must pass it an array of values rather than just some loose numbers.

//
//let ages: Int = [26, 28, 39]
//This attempts to place an array of integers into a single integer, which is invalid.


//let credentials = ["username": "twostraws"]
//This creates a dictionary.
//
//Option 2:
//
//let isConfigured = false
//This creates a Boolean.


