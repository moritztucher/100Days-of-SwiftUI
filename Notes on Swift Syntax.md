## Variables/Constants
Constants: `let`
Variables: `var`

built-in arithmetic operators, such as `+`, `-`, `*`, and `/` can be shortend to `+=`, `-=`, `*=`, and `/=` if just variable itself should be changes. 
Example: `counter = counter + 1` => `counter += 1`

## Types
**String** holds text:
`var text: String = "Hello World!"`
* String interpolation works with `\(var/let)` but can only be a var if the string is also a var. `"Your name \(var/let name)"` similar to : `"Your Name" + varname`
* Multiline string `""" """`
* Double quotes inside a String: `" \"text\" "`
* String length: `.count()`

**Int** holds whole numbers:
`var luckyNumber: Int = 13`

**Double** holds decimal numbers:
`let pi: Double = 3.141`

**Bool** holds either true or false:
`var isAuthenticated: Bool = true`
* Booleans can be flipped with `.toogle()`

**Array** holds lots of different values, all in the order they are added using integer indices. `[datatyp]`
helpful functionality: 
* count
* append() 
* contains()
`var albums: [String] = ["Red", "Fearless"]`

**Dictionary** holds lots of different values, where the key decides how data should be accessed, similar functionality to arrays. `[Datatyp of Key: Datatyp of Value]`
`var user: [String: String] = ["id": "@twostraws"]`

**Set** holds lots of different values, but stores them in an order that’s optimized for checking what it contains. And can contain any value only once. `Set<datatyp>`
`var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])`

Type annotations are not needed:
`var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]`
Only for empty array, dict or set.
`var teams: [String] = [String]()`

**Enum:**
Values of an enum have the same type as the enum itself. Can specify a range of acceptable values such as a list of actions the user can perform, the types of files we are able to write, or the types of notification to send to the user
```swift
enum UIStyle {
    case light, dark, system
}
var style = UIStyle.light
```

type annotations for empty constants
```swift
let username: String
username = "@twostraws"
print(username)
```

Swift must always know the type of data inside a constant or variable, and mostly uses type inference to figure that out based on the data we assign. However, it's also possible to use type annotation to force a particular type.

## Conditionals and Loops

### Conditional:
**if/else**
`if` statements to check a condition 
`else` block, and/or multiple `else if` blocks to check other conditions
* `||` or 
* `&&` and 

**switch-case** if same kinds of check is repeated alot 
```swift
switch variablename {
    case vale1: 
    case value2:
    default:
}
```
`fallthrough` executes the following case aswell

### Loops
**for-loop**
`for` loop over arrays, sets, dictionaries, and ranges. assign items to a loop variable and use it inside the loop. to ignore the loop variable underscore `_`can be used.

**while-loop**
`while` craft custom loops that will continue running until a condition becomes false.

`continue` skip the rest of the loop and starts at the next itteration. 

`break` ends the loop

## Functions
### Declare Functions with Parameters and Return
Define function: `func funcName() {}`
call funtion: `funcName()`

Function with Paramters: `func funcName(name: type) {}`
Function with Function as Parameter: `func funcName(parameterFunctio: (type) -> type) -> type {}`

Funtion with return: `func funcName() -> type {return value}`

Funtion with return that only have one line dont need a `return`: `func funcName(name: type) -> type { name == value}` or `func funcName(Name: type) -> type {funcWithReturn(Parameters)}`

Function that returns Array: `func getArray() -> [String] { ["", ""]}`

Function that returns Dict: `func getDict() -> [String: String] { ["key": "value" , "key2":"value2"]}`

Function that returns Tuple: `func getTuple() -> (value1: String, value2: String) { ("", "")}`
alternative: `func getTuple() -> (String, String) { ("", "")}`
access tuple either by value name `value.firstname` or numeric if it doesnt have a name `value.0`
alternative: `let (value1, _) = getTuple()`

### Customzie Parameter Labels
Inside it the funciton you can declare the parameter name the function uses inside itself and outside when it is called. 

Declaring different outside and inside name: 
`func testFunc(outsideName insideName: Type)`

Declaring only inside name: 
`func testFunc(_ insideName: Type)`
the `_` removes the outside parametername. 

if neither outside Name nor _ is used, the inside name is also the ouside name. 

## Error handeling 
Creating own errors
```swift
enum nameError: Error {
    case error1, error2
}
```

functions need to be marked with `throws` : 
`func funcName(_ prameter: Type) throws -> Type {}`
throws needs a try-catch inside the funtion 
```swift
do {
    try someRiskyWork()
} catch {
    print("Handle errors here")
}
```
with `catch` all errors are caught if specific errors should be caught use `catch nameError.error1`

## Closures
* Functions can be assigned to variables 
`var funcCopy = funcReal`
* pass functions into functions 
* Return funcitons from funcitons

### Define Closures 
Create a function on a constant
* Outside Parameter names get lost in Closures
```swift
let sayHello = { (name: String) -> String in
    print("Hi \(name)!")
}

sayHello("Bob")
```
Other way to create closures
```swift
func getUserData(for id: Int) -> String {
    if id == 1999 {
        return "Bob"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1999)
```
other way to create closures is inside the area for parameters. 
It just has to be a "closure-function" that returns the correct type.
use `{ (Parameters) -> Type in ... }` inside the area for Parameters `()`
```swift
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})
```
### Trailing Closures 
possible to remove the `(by: )` around the `{}`
```swift 
let captainFirstTeam = team.sorted { name1, name2 in
    ...
}
```
parameter names can be shortend to `$0`, `$1`, `$2` ... 
```swift
let reverseTeam = team.sorted { $0 > $1 }
let tOnly = team.filter { $0.hasPrefix("T") }
let uppercaseTeam = team.map { $0.uppercased() }
```

Calling a function that takes a function as parameters using Closures: 
```swift 
func makeArray(size: Int, using generator: () -> Int) -> [Int] {}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

```

## Structs
Sturctures can be written on constants and variables. Its called instant of struct. 
Define structs: 
```swift
struct StructName {
    let constantName1: Type
    let constantName2: Type
    let constantName3: Type

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let name1 = StructName(constantName1: "", constantName2: "", constantName3: "")
var name2 = StructName(constantName1: "", constantName2: "", constantName3: "")
```

If values inside the Struct are changing it has to be written on a variable. 
And the function that changes has to be declares as `mutating func`:
```swift
struct Employee {
    let name: String
    var vacationRemaining: Int

    func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
```
Stucts can have be defined with default values on variables and constants: 
```swift
struct StructName {
    let constantName1 = Value
    var variableName1 = Value
}
```
Constants are not part of the initializer anymore because the value of a constant cant change. 
Variables are now optional, if no new value is assigned at the initializer the default value will be used. 

### Custom Initializer
initializers are declared with `ìnit()` and it can have more then one initializers
```swift 
struct Player {
    let name: String
    let number: Int
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let megan = Player(name: "Megan R", number: 15)
let bob = Player(name: "Bob M")
```

### Dynamic Variables in Structs
Computed properties (variables) can be defined as: 
```swift
struct StructName {
    var variableName1 = Value
    var variableName2 = Value

    var variableName3: Int {
        variableName1 - variableName2
    }
}
```
those variables can have also a get and set method. `newValue` is provided by swift and is the assigned value (`StructName.variableName3 = Value`)
```swift
var variableName3: Int {
    get {
        variableName1 - variableName2
    }
    set {
        variableName1 = variableName2 + newValue
    }
}
```
`get` and `set` have different type of codes, which are run either when reading or writing. 

### Observer in Structs
**(Keep code minimal in observers)**
`didSet` run when property is changed
`willSet` rund before property is changed 
```swift
struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}
```
`oldValue` the old value that the property has before change 
`newValue` the new value the property is changing too

## Access Control: Properties and Methods
* `private` don't let anything outside the struct use this.
    * `private(set)` allowes read but not write  
* `fileprivate` don't let anything outside the current file use this.
* `public` let anyone, anywhere use this.

## Static: Properties and Methods
`static` methods can't access non static methods 
non static methods can access `static` methods 
Struct doesn't need to be initalized to run `static` methods

### Examples 
For AppData to organize common data in static properties:
```swift
struct AppData {
    static let version = "1.1.1.1.2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://github.com/moritztucher/100DaysOfSwiftUI"
}
```
Example Property to see how something might look in a UI
```
struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}
```

## Self vs self
* `self` refers to the current value of the struct
* `Self` refers to the current type.

## Classes
