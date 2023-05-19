import Cocoa

//Sets dont remember order and dont allow duplicates
let people = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])
print(people)

//New items are inserted.
var people2 = Set<String>()
people2.insert("Denzel Washington")
people2.insert("Tom Cruise")
people2.insert("Nicolas Cage")
people2.insert("Samuel L Jackson")

print(people2)

print(people.contains("Denzel Washington"))
print(people2.count)
