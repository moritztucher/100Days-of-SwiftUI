# View Components

### Modifiers
The order matters, imagine that SwiftUI renders your view after every single modifier.
```swift
.frame(maxWidth: .infinity, maxHeight: .infinity) //Sets the size of the stack
.background(.color) //background color
.background(.ultraThinMaterial) //Vibrancy
.foregroundStyle(useRedText ? .red : .blue) //Text Color with condition
```

### Enviorment Modifier
```swift
VStack {

}
.font(.title) //Changes the font size

```


## Stacks
Allow spacing and allignment inside the stack

```swift
var body: some View {
    Stack {

    }
}
```

### Vertical Stack
```swift
var body: some View {
    VStack {

    }
}
```

### Horizontal Stack
```swift
var body: some View {
    HStack {
        
    }
}
```

### Depth Stack
```swift
var body: some View {
    ZStack {
        
    }
}
```

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

### Button
```swift
Button("Button Name", role: .destructive, action: functionName)
    .buttonStyle(.bordered) //Background color
    .buttonStyle(.borderedProminent) //Text color white, background color = role
```
alternative
```swift
Button("Button Name") {
    print("Now deleting…")
}
```

### Custom Button
```swift
Button {
    print("Edit button was tapped")
} label: {
    Label("Edit", systemImage: "pencil")
        .padding()
        .foregroundStyle(.white)
        .background(.red)
}
```

### 
```swift

```

## Color Frame 
```swift
Color.colorName
    .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
```
alternative:
```swift
Color(red: 1, green: 0.8, blue: 0)
    .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
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

## Color Gradient

### Linear Gradient
```swift
struct ContentView: View {
    var body: some View {
        LinearGradient(stops: [
            .init(color: .white, location: 0.05),
            .init(color: .black, location: 0.95),
        ], startPoint: .top, endPoint: .bottom)
    }
}
```

### Radial Gradient
```swift
struct ContentView: View {
    var body: some View {
        RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
    }
}

```

### Angular Gradient
```swift
struct ContentView: View {
    var body: some View {
        AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
    }
}
```
### background/foreground Gradient
```swift
Text("Your content")
    .background(.red.gradient)
```

## Alert Messages
```swift
struct ContentView: View {
    @State private var showingAlert = false

    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("OK") { }
        }
    }
}
```
Alternatives: 
```swift
.alert("Important message", isPresented: $showingAlert) {
    Button("Delete", role: .destructive) { }
    Button("Cancel", role: .cancel) { }
}
```
```swift
.alert("Important message", isPresented: $showingAlert) {
    Button("OK", role: .cancel) { }
} message: {
    Text("Please read this.")
}
```


## View composition
```swift
struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("First")
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
                .background(.blue)
                .clipShape(.capsule)

            Text("Second")
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
                .background(.blue)
                .clipShape(.capsule)
        }
    }
}
```
can be changed to: 
```swift
struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
            CapsuleText(text: "Second")
        }
    }
}
```

## Custom modifiers
```swift
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}
```
When working with custom modifiers, it’s usually a smart idea to create extensions on View that make them easier to use.  
```swift
extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}
```
Used then: 
```swift
Text("Hello World")
    .titleStyle()
```

### 
```swift

```
