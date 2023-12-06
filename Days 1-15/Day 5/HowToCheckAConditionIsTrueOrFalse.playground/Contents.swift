import Cocoa

let score = 85

if score > 80 {
    print("Great job!")
}

let speed = 88
let age = 18

//greater than or equal
if speed >= 88 {
    print("Where we're going we don't need roads.")
}
//less than or equal
if age <= 18 {
    print("You're eligible to vote")
}

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

//less than
if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}
//greater than
if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

// Make an array of 3 numbers
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Remove the oldest number
    numbers.remove(at: 0)
}

// Display the result
print(numbers)

let country = "Canada"
//is equal to
if country == "Australia" {
    print("G'day!")
}

let name = "Taylor Swift"
//is not equal to
if name != "Anonymous" {
    print("Welcome, \(name)")
}

var username = ""
if username.isEmpty == true {
    username = "Anonymous"
}
//easier/shorter
if username.isEmpty {
    username = "Anonymous"
}
