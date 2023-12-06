import Cocoa

let age = 18
//            Condition   True    False
let canVote = age >= 18 ? "Yes" : "No"

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)

//This version is needed for:
print(hour < 12 ? "It's before noon" : "It's after noon")
//Is needed because otherwise the following would be needed. 
//as print containing if would be: (not working)
//print(
   //if hour < 12 {
        //"It's before noon"
    //} else {
        //"It's after noon"
    //}
//)
//as if containing print
if hour < 12 {
    print("It's before noon")
} else {
    print("It's after noon")
}
