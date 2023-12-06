struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Robert Downey Jr.")
print(School.studentCount)

struct StudentRegister {
    static var studentNumber = 0
    let name: String
    
    init(name: String) {
        self.name = name
        StudentRegister.add()
    }
    
    private static func add(){
        studentNumber += 1
    }
}

let tommy = StudentRegister(name: "Tommy")
let bobby = StudentRegister(name: "Bobby")
let Jimmy = StudentRegister(name: "Jimmy")
print("Number of Students: ", StudentRegister.studentNumber)

struct AppData {
    static let version = "1.1.1.1.2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://github.com/moritztucher/100DaysOfSwiftUI"
}

struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

