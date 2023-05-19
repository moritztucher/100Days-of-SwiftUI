import Cocoa

let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

//returns an "optional()" because swift says it could be empty. Optional is not a value like String or Int
print(employee["name"])
print(employee["job"])
print(employee["location"])
//Solution would be a default value if the read value is empty. Always returns a value like String or Int
print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])
print(olympics[2008, default: "Unknown"])

//Empty dictionary: [Key: Value]()
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206
