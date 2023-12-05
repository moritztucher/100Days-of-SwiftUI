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

Funcion with Paramters: `func funcName(name: type) {}`

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
```swift
let sayHello = { (name: String) -> String in
    print("Hi \(name)!")
}

sayHello()
```

### Use Closures
