import Cocoa

//Boolean to store True and False values
let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

let goodDogs = true
let gameOver = false

let isMultiple = 120.isMultiple(of: 3)

//! means not
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)


//toogle to flip booleans from false to true and other way round
var gameOver2 = false
print(gameOver2)

gameOver2.toggle()
print(gameOver2)
