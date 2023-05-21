import Cocoa

//Floating-point number, swift consider it as double
let number = 0.1 + 0.2
print(number)

let a = 1
let b = 2.0
//let c = a + b -> Doesnt work because of Integer + Double
//Integer or Double has to be casted as Integer/Double
let c = Double(a) + b
let d = a + Int(b)


var name = "Bob"
//Name cant be name = 222 because its already assigned in Swift as string

var rating = 5.0
rating *= 2
//Swift recognises the 2 as a double
