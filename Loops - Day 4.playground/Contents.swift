import Cocoa

//LOOPS

//for loops - very common -- it can loop through some arrays and ranges and each time it goes around it will pull out one item and assign to a constant


let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on apple music")
}

//if you don't use a constant that for loops give you, you should use an underscore instead so that Swift doesn’t create needless values:

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

for _ in albums {
    print("This is on apple music")
}

//Why does Swift use underscores with loops?

//If you want to loop over items in an array, you might write code such as this:

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for name in names {
    print("\(name) is a secret agent")
}

//Every time the loop goes around, Swift will take one item from the names array, put it into the name constant, then execute the body of our loop – that’s the print() method.
//
//However, sometimes you don’t actually need the value that is currently being read, which is where the underscore comes in: Swift will recognize you don’t actually need the variable, and won’t make the temporary constant for you.


//Of course, Swift can really see that anyway – it can see whether or not you’re using name inside the loop, so it can do the same job without the underscore. However, using an underscore does something very similar for our brain: we can look at the code and immediately see the loop variable isn’t being used, no matter how many lines of code are inside the loop body.
//
//So, if you don’t use a loop variable inside the body, Swift will warn you to rewrite it like this:

let names2 = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in names2 {
    print("[CENSORED] is a secret agent!")
}

var numbers = [1, 2, 3, 4, 5, 6]
for number in numbers {
    if number.isMultiple(of: 2) {
        print(number)
    }
}


//while loop -- it will go round adn round until the condition fa9ils
//A second way of writing loops is using while: give it a condition to check, and its loop code will go around and around until the condition fails.

//For example, we could use a while loop to simulate a child counting in a game of hide and seek: we start at one, count up to and including 20 while printing each number out, then after the loop print “Ready or not”.

//Here’s how that looks in Swift:

print("while loop satrting now.....")
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

//When should you use a while loop?

//The main difference is that for loops are generally used with finite sequences: we loop through the numbers 1 through 10, or through the items in an array, for example. On the other hand, while loops can loop until any arbitrary condition becomes false, which allows them until we tell them to stop.

//This means we can repeat the same code until…
//
//…the user asks us to stop
//…a server tell us to stop
//…we’ve found the answer we’re looking for
//…we’ve generated enough data

var cats: Int = 0
while cats < 10 {
    cats += 1
    print("I'm getting another cat.")
    if cats == 4 {
        print("Enough cats!")
        cats = 10
    }
}


0.isMultiple(of: 2)
var number2: Int = 10
while number2 > 0 {
    number2 -= 2
    if number2.isMultiple(of: 2) {
        print("\(number2) is an even number.")
    }
}


var averageScore = 2.5
while averageScore < 15.0 {
    averageScore += 2.5
    print("The average score is \(averageScore)")
}


//repeat loops - identical to while loop
var number3 = 1

repeat {
    print(number3)
    number3 += 1
} while number3 <= 20

print("Ready or not, here I come!")

//since the condition to check comes in the end, the code inside the loops will always be excecuted at least oncem, whereas whiole loop chaeck their condition before their first run
//for eg
while false {
    print("This is false")
}


repeat{
    print("this is false")
} while false
            
            
//When should you use a repeat loop?

//let numbers4 = [1, 2, 3, 4, 5]
//let random = numbers4.shuffled()


//Now, what if we wanted to make sure our randomized array wasn’t the same as the original? That would mean running the shuffle, check whether the original and shuffled numbers match, and if they do then shuffle again. This could potentially happen many times, because in theory it’s possible for the same sequence to come back repeatedly – although it’s increasingly unlikely.

//So, using a while loop we might write this:

let numbers4 = [1, 2, 3, 4, 5]
var random2 = numbers4.shuffled()

while random2 == numbers4 {
    random2 = numbers4.shuffled()
}


//That makes random equal to the shuffled numbers in numbers. It then checks whether the new numbers as the same as the old ones, and if so shuffles them again. As you can see, that means we’ve repeated shuffled() in two places. For simple code this isn’t really an issue, but what if the code you needed to repeat was 5 lines of code? Or 20 lines?
//
//Now look at the same code using repeat:

let numbers5 = [1, 2, 3, 4, 5]
var random: [Int]

repeat {
    random = numbers5.shuffled()
} while random == numbers5 // until this condition is true it will keep running in a loop

//That tells Swift that random will be an integer array but doesn’t actually fill it with anything. Inside the loop body we assign to it the shuffled numbers, then check whether we have the same values or not – the code is simpler, with no repetition.

var doubles = 0
var value = 1
repeat {
    doubles += 1
    value *= 2
    print("Value is \(value)")
   
} while doubles < 10


var scales = ["A", "B", "C", "D", "E"]
var scaleCounter = 0
repeat {
    print("Play the \(scales[scaleCounter]) scale")
    scaleCounter += 1
} while scaleCounter < 3


//exiting loops
//always sue break keyword
var countDown = 10
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}


//Why would you want to exit a loop?

//However, sometimes you do want to end your loop prematurely. For example, if you had an array of scores and you want to figure out how many of them the player achieved without getting a 0, you might write this:

let scores = [1, 8, 4, 3, 0, 5, 2]
var counts = 0

for score in scores {
    if score == 0 {
        print("Score is \(score)" )
        break
    }

    counts += 1
}

//print("You had \(count) scores before you got 0.")
//Without break we’d need to continue looping through scores even after we found the first 0, which is wasteful.
var people = 2
while people < 10 {
    people += 2
    if people == 10 {
        print("We got 10 people.")
    }
}


for i in 1...15 {
    if i.isMultiple(of: 3) {
        if i.isMultiple(of: 5) {
            print("\(i) is a multiple of both 3 and 5.")
        }
    }
}

//exiting multiple loops
//we can exit multiple nested loops at the same time, its tough but its stil;l possible
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}



//Why does Swift have labeled statements?

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

//for option1 in options {
//    for option2 in options {
//        for option3 in options {
//            print("In loop")
//            let attempt = [option1, option2, option3]
//
//            if attempt == secretCombination {
//                print("The combination is \(attempt)!")
//            }
//        }
//    }
//}
//
//
//That goes over the same items multiple times to create an attempt array, and prints out a message if its attempt matches the secret combination.
//
//But that code has a problem: as soon as we find the combination we’re done with the loops, so why do they carry on running? What we really want to say is “as soon as the combination is found, exit all the loops at once” – and that’s where labeled statements come in. They let us write this:

outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}

//With that small change, those three loops stop running as soon as the combination is found. In this trivial case it’s unlikely to make a performance difference, but what if your items had hundreds or even thousands of items? Saving work like this is a good idea, and worth remembering for your own code.
//skipping items

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}


1 % 2 == 1


//When to use break and when to use continue
//When we use continue we’re saying “I’m done with the current run of this loop” – Swift will skip the rest of the loop body, and go to the next item in the loop. But when we say break we’re saying “I’m done with this loop altogether, so get out completely.” That means Swift will skip the remainder of the body loop, but also skip any other loop items that were still to come.

//Just like break, you can use continue with labeled statements if you want, but honestly I can’t remember ever seeing it done!
var hoursStudied = 0
var goal = 10
repeat {
    hoursStudied += 1
    if hoursStudied > 4 {
        goal -= 1
        continue
    }
    print("I've studied for \(hoursStudied) hours") // here, once hourStudied > 4, it won't print the statement and it wil exit the loop and printing part -- so it will skip the printing part
    
    
} while hoursStudied < goal // this statement should be false

let fibonacci = [1, 1, 2, 3, 5, 8, 13, 21]
var position = 0
while position <= 7 {
    let value = fibonacci[position]
    position += 1
    if value < 2 {
       continue
    }
    print("Fibonacci number \(position) is \(value)")
}

var passengerNumber = 0
while passengerNumber < 30 {
    passengerNumber += 1
    if passengerNumber == 13 {
        print("Let's skip the unlucky one.")
        continue
    }
    print("Now boarding passenger \(passengerNumber)")
}

var counting = 0
while counting <= 20 {
    counting += 1
    if counting > 5 {
        continue
    }
    print("\(counting)...")
}
print("Ready or not, here I come!")
1.isMultiple(of: 2)


var carsProduced = 0
repeat {
    carsProduced += 1
    if carsProduced.isMultiple(of: 2) {
        continue
    }
    print("Another car was built.") //1,3,5,7,9,11,13,15,17,19
} while carsProduced < 20


//infinite loops
var counter = 0

while true {
    print("_", terminator: "-")
    counter += 1

    if counter == 273 {
        break
    }
}

//Why would you want to make an infinite loop?

//while true {
//    print("I'm alive!")
//}
//
//print("I've snuffed it!")
//In that code, “I’m alive!” will be printed again and again forever, whereas the “I’ve snuffed it!” message will never be printed – the loop won’t end, so the message won’t be printed. In practice, you’re more likely to have some sort of condition to your loop, like this:
print("\n")
var isAlive = false

while isAlive == true {
    print("I'm alive!")
}

print("I've snuffed it!")
//That allows you to end the loop when you’re ready, so they aren’t truly infinite. As a result, programmers will often call these pseudo-infinite loops – they will run for a long time, and perhaps indeed forever in the case of critical systems that never restart, but technically they aren’t truly infinite.
//
//You might wonder why this sort of code is useful, but actually it’s really common. For example, all the apps you use on your iPhone have infinite loops. Think about it: when your app launches it needs to repeat a series of instructions until it’s told to stop:
//
//Check for any user input
//Run any code you need
//Redraw the screen
//Repeat
//That might last for 10 seconds if you’re just checking Twitter, but it might last for hours if you’re playing a game – or perhaps it might run for much longer. The point is that we don’t know when the loop will stop, so we can just loop from 1 to a billion.
//
//Instead, they use something like an infinite loop a bit like the one I showed you earlier – the program will continue to run again and again until it’s time to close, at which point the loop can finish and any clean up code can run.


var kids = 1
repeat {
    print("Kids in the class: \(kids)")
    kids += 1
} while kids != 10


//SUMMARY

//You’ve made it to the end of the fourth part of this series, so let’s summarize:
//
//Loops let us repeat code until a condition is false.
//The most common loop is for, which assigns each item inside the loop to a temporary constant.
//If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
//There are while loops, which you provide with an explicit condition to check.
//Although they are similar to while loops, repeat loops always run the body of their loop at least once.
//You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
//You can skip items in a loop using continue.
//Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!


//all apps on iphone keep using infinite loops as they keep running until the user stops using them.

