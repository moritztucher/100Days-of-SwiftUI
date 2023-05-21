import Cocoa

//constants
let surname = "Lasso"
//variable
var score = 0
//String holds text:
let playerName: String = "Roy"
//Int holds whole numbers:
var luckyNumber: Int = 13
//Double holds decimal numbers:
let pi: Double = 3.141
//Bool holds either true or false:
var isAuthenticated: Bool = true
//Array holds lots of different values, all in the order they are added
//[datatyp]
var albums: [String] = ["Red", "Fearless"]
//Dictionary holds lots of different values, where the key decides how data should be accessed.
//[Datatyp of Key: Datatyp of Value]:
var user: [String: String] = ["id": "@twostraws"]
//Set holds lots of different values, but stores them in an order that’s optimized for checking what it contains. And can contain any value only once
//Set<datatyp>
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])


//Type annotations are not needed:
var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
//Only for empty array, dict or set.
var teams: [String] = [String]()

//Values of an enum have the same type as the enum itself
enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

//type annotations for empty constants
let username: String
username = "@twostraws"
print(username)
