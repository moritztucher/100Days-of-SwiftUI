import Cocoa

//Joining string with +
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

//String interpolation \(var/let)
let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

var bobby = "bobby"
//message = "Hello, my name is \(bobby) and I'm \(age) years old."
//To use bobby in message, both have to be a var
var messageTwo = "Hello \(bobby)"
print(messageTwo)
bobby = "bob"
print(messageTwo)
//if variable bobby is changed it does not change the string in messageTwo

let number = 11
var missionMessage = "Apollo " + String(number) + " landed on the moon."
//but interpolation is better to read
missionMessage = "Apollo \(number) landed on the moon."

//calculations in string interpolation
print("5 x 5 is \(5 * 5)")
