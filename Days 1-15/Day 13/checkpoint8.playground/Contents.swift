import Cocoa

protocol Building {
    var rooms : Int {get set}
    var cost : Int {get set}
    var agent : String {get set}
    
    func salesSummary()
}


struct House: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    
    init(rooms: Int, cost: Int, agent: String) {
        self.rooms = rooms
        self.cost = cost
        self.agent = agent
    }
    
    func salesSummary(){
        print("The Agent \(agent) sells a house with \(rooms) rooms for \(cost)$")
    }
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    
    init(rooms: Int, cost: Int, agent: String) {
        self.rooms = rooms
        self.cost = cost
        self.agent = agent
    }
    
    func salesSummary(){
        print("The Agent \(agent) sells a office with \(rooms) rooms for \(cost)$")
    }
}

let phome = House(rooms: 5, cost: 589000, agent: "Tom Holland")
let work = Office(rooms: 89, cost: 15778000, agent: "Tom Hiddelston")

phome.salesSummary()
work.salesSummary()
