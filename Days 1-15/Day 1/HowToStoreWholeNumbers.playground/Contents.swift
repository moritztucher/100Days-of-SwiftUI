import Cocoa

//Whole numbers are Int (Integer)
let score = 10

let reallyBig = 100000000
//more readeble
let readableBig = 100_000_000
//Swift ignores _ in numbers

//arithmetic operators
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
let moduloScore = 2 % score
print(score)

//Variable and arithmetic operators
var counter = 5
counter = counter + 5
counter += 5
print(counter)
counter *= 2
print(counter)
counter -= 10
print(counter)
counter /= 2
print(counter)

let number = 120
print(number.isMultiple(of: 3))
//can also be used directly on to the Number
print(120.isMultiple(of: 3))
