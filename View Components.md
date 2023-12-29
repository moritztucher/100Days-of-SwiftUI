# View Components
## Form
Forms are scrolling lists of static controls like text and images, but can also include user interactive controls like text fields, toggle switches, buttons, and more.
```swift
var body: some View {
    Form {
        
    }
}
```
### Section (Visual Chunks)
To group related items visually
```swift
Form {
    Section ("Title it if you want") {
        
    }
    Section {
        
    }
}
```

## Navigation Bar
To Aaoid the form scrolling into the Dynamic Island use a navigation bar on top. Without a title there is no difference to see, but it bahaves different.
```swift
var body: some View {
    NavigationStack {
        Form {

        }
        .navigationTitle("SwiftUI")
        .navigationBarTitleDisplayMode(.inline)
    }
}
```

## Interactive Controlls 
### Text (Label)
```swift
Text("Hello, world!")
```

### Text Input
```swift
struct ContentView: View {
    @State private var name = ""

    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Hello, world!")
        }
    }
}
```
`text: ` for Strings
`value: ` for numeric (Int and Double)



### Picker
```swift
struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"

    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}
```

### 
```swift

```
### 
```swift

```
### 
```swift

```




## ForEach
Creates a view for each time it goes through the loop
```swift
Form {
    ForEach(0 ..< 100) {
        Text("Row \($0)")
    }
}
```

## 
```swift

```