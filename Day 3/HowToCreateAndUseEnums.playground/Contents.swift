import Cocoa

//Declaration for Enum
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
//Alternate form of declaration
enum Weekday2 {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

print(day)
