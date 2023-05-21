import Cocoa

//Function without paramter
func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}
showWelcome()

//Function with Paramters
//functionname(inputname: inputtyp)
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(number: 5)

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(number: 5, end: 20)


//Function with Return
//functionName(Parameters) -> ReturnType
func rollDice() -> Int {
    return Int.random(in: 1...6)
}
let result = rollDice()
print(result)
print(rollDice())

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}
//Alternate writing
func areLettersIdentical2(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}
//Even shorter Version. In case function only has one line, return can be removed
func areLettersIdentical3(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}


//Function that returns array
func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])")

//Function that returns dict
func getUser2() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let user2 = getUser2()
print("Name: \(user2["firstName", default: "Anonymous"]) \(user2["lastName", default: "Anonymous"])")

//Function returns tuple
func getUser3() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user3 = getUser3()
print("Name: \(user3.firstName) \(user3.lastName)")
//if the values should not be saved in a touple variable
let (firstName, lastName) = getUser3()
print("Name: \(firstName) \(lastName)")


//Importants of naming parameters
func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }
//Swift knows by the parameter name what function is meant

//We can set internal and external names for a function parameter
//(_ internalname: typ) tells swift the external name can be ignored leading to:
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}
let string = "HELLO, WORLD"
let result2 = isUppercase(string)
//(name: typ) the internal and externalname is the same
func printTimesTables2(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables2(number: 5)
//(externalname internelname: typ) the internal and external name is differen
func example(externalname internalname: String) {
    print(internalname)
}
example(externalname: "Example")
//Can also be used to read something better:
func printTimesTables3(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables3(for: 5)
//"print times tables for 5" sounds better then "print times tables number 5"
