import Cocoa

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog : Animal {

    func speak() {
        print("bark")
    }
}
class Cat  : Animal {
    let isTame : Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: <#T##Int#>)
    }
    
    func speak() {
        print("miau")
    }
}

class Corgi : Dog {
    override func speak() {
        print("Barkkk")
    }
}
class Poodle : Dog {
    override func speak() {
        print("barrrk")
    }
}

class Persian : Cat {
    override func speak() {
        print("miiau")
    }
}
class Lion : Cat {
    override func speak() {
        print("rarwww")
    }
}


let corgi = Corgi(legs: 4)
let poodle = Poodle(legs: 4)
let persian = Persian(legs: 4, isTame: true)
let lion = Lion(legs: 4, isTame: false)
