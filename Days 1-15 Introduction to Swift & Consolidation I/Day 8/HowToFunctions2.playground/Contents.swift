import Cocoa

//function with default parameters
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(for: 5, end: 20)
printTimesTables(for: 3)

//Handeling Errors
//3. Steps
//1. Telling Swift about the possible errors that can happen.
//2. Writing a function that can flag up errors if they happen.
//3. Calling that function, and handling any errors that might happen.

//defining problems that could happen.
enum PasswordError: Error {
    case short, obvious
}
//Function needs throws if it doesnt handle the errors themselfs and can throw an error
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}
//Handeling Error
let string = "12345"
do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}
