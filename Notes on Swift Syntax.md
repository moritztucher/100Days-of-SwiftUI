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
```swift
struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}
```

## Self vs self
* `self` refers to the current **value**.
* `Self` refers to the current **type**.

## Classes
```swift
class ClassName {
    let parentVariable = "Hello World!"

    init(){}

    func parentFunc () {}
}
```
**Inheritance between classes:**
```swift 
class ClassName : ParentClass {
    func printVariable(){
        print(parentVariable)
    }
}
```
**Overriding functions from parent classes:**
```swift 
class ClassName : ParentClass {
    override func parentFunc () {}

}
```
**Final:**
A `final` class doesnt support inheritance. It can Inherit from other classes but cant be a parent class. 

**Copying classes:** 
```swift
class User {
    var username = "Anonymous"
    func copy() -> User {
            let user = User()
            user.username = username
            return user
        }
}
//Option 1: 
var user1 = User()
var user2 = user1

//Option 2: (Create a copy function inside the Class)
var user3 = user1.copy()
```

**Deinitializer:**
Classes can get a deinitializer `deinit{}`. It gets called when the class object gets "destroyed". 
They dont take any parameters and dont have a return. 
"The deinitializer will automatically be called when the final copy of a class instance is destroyed. That might mean it was created inside a function that is now finishing." 
```swift
class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}
```

## Protocols
Protocols define what porperties and functions a data type should support. Functions only get a name, parameters and return type but not a body. Every data type that conforms to the protocoll **must** implements the properties and functions. (excetption if the protocol has an extension where a function is already implemented)

```swift
protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}
```

Functions can also take the protocol type/name as a property
```swift
func commute(distance: Int, using vehicle: Vehicle) { }
```

## Existing Protocolls
### Equatable (Protocol)
It will compare all the properties of one object against the same properties in the other object.
Every Type that can be compared with `< > =` 
(Int, Double, Bool...)

### Comparable
allows Swift to see if one object should be sorted before another


## Extensions 
Extends existing data types with new functions. 
```swift
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
```
Why use it? 
* Code Completion: Swift suggests functions that are in a extension block, making them easier to find 
* Code organization: The code is more organized and easier to read 
* Internal access: get full exess to everything in that data that otherwise could be restricted by private

Protocolls can be extenden. If a function gets extended then it is not necerssary to impement it if a new data type with that protocol is created: 
```swift
protocol Person {
    var name: String { get }
    func sayHello()
}
extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}
struct Employee: Person {
    let name: String
}
let chris = Employee(name: "Chris Hemsworth")
chris.sayHello()
```

## Opaque Return
`some ProtocolName` allows us to change our mind about the exact return later. It tels swift it can expect something that confirms with the protocol but not exactly what it is. For example: `some view` tells swift it gets a view layout but not exactly how the layout is structured.  
```swift
func getRandom() -> some Equatable {
    Int.random(in: 1...6)
}
//Changed int to bool
func getRandom() -> some Equatable {
    Bool.random()
}
```

## Optionals
Optionals let us represent the absence of data, it basically says "this type has no value"
Variables that can have a value but they dont necessarily have one. `?` behind the type declares the variable as optional.
```swift
var username: String? = nil
```
### Unwrapping Optionals
Optional cant be used at places where a non-optional is required. So it has do be unwraped first:
```swift
if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}
```
### Unwrapping Optionals with Nil
`??` nil coalescing operator
This returns always a type not an optional
example: (will always return a String)
```swift
let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"
```

### Multiple Optionals (Optional chaining)
The return of an optional chaining is always an optional, to prevent this nil coalescing is needed `?? nil`
Optional chains can be as long as the user wants, but as soon as any part sends back `nil` the rest of the line is ignored. 


```swift
//if the optional has a value inside, unwrap it then…
let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
```
other example: 
if we have a book, and the book has an author, and the author has a first letter, then uppercase it and send it back, otherwise send back A”
```swift
let author = book?.author?.first?.uppercased() ?? "A"
```

### Function Failure With Optionals 
`try!` it is assumed the code will always work. If not the code will crash: **use `try!` very rarely.**

`try?` checks if a function succeeded or failed it doesnt tell anything else. 
```swift
if let user = try? getUser(id: 23) {
    print("User: \(user)")w
}
```
It is mainly used in three places:
* In combination with guard let to exit the current function if the try? call returns nil.
* In combination with nil coalescing to attempt something or provide a default value on failure.
* When calling any throwing function without a return value, when it genuinely doesn't matter if it succeeds or not 

### Guard
Alternative to `ìf let` is `guard let`. It switches basically the logic. 
`ìf let` gets executed if the optional has a value. 
`guad let` gets executed if the optional doesnt have a value
```swift
var myVar: Int? = 3

if let unwrapped = myVar {
    print("Run if myVar has a value inside")
}
guard let unwrapped = myVar else {
    print("Run if myVar doesn't have a value inside")
}
```

* If guard is used to check a function’s inputs are valid, Swift will always require to use return if the check fails.
* If the check passes and the optional unwrapping has a value inside, it can be used after the guard code finishes.
```swift
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")

        // 1: We *must* exit the function here
        return
    }

    // 2: `number` is still available outside of `guard`
    print("\(number) x \(number) is \(number * number)")
}
```


## 
```swift

```


