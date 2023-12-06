struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let marvel = Album(title: "Iron Man", artist: "RDJ", year: 2008)
let disney = Album(title: "Frozen", artist: "Elsa", year: 2023)

marvel.printSummary()
print(marvel.artist)

struct Employee {
    let name: String 
    var vacationRemaining = 30

    mutating func takeVacation(days: Int) {
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
print(archer.vacationRemaining)

var bob = Employee(name: "Bob Marley", vacationRemaining: 30)
print("Bob has \(bob.vacationRemaining) Vacation days")
