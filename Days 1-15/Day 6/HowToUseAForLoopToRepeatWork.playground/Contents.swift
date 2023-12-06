import Cocoa

//Go through an array
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for name in platforms {
    print("Swift works great on \(name).")
}

//Range of numbers
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

//nested loops
for i in 1...12 {
    print("The \(i) times table:")

    for j in 1...12 {
        print("  \(j) x \(i) is \(j * i)")
    }
    print("")
}

//counts up to but excluding the final number
for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

//if i is not needed than leefe blank _
var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)


