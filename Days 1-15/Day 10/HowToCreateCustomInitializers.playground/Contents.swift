struct Player {
    let name: String
    let number: Int
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
    
    func printPlayer(){
        print("Player \(name) has the number \(number)")
    }
}

let megan = Player(name: "Megan R", number: 15)
let bob = Player(name: "Bob M")

megan.printPlayer()
bob.printPlayer()
