import Cocoa

func randomIntArray(_ array: [Int]?) -> Int{
    return array?.randomElement() ?? Int.random(in: 1...100)
}

var array : [Int]? = nil
print(randomIntArray(array))

