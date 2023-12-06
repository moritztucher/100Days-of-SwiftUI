import Cocoa

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]


//Printing elements of the arrays by calling the index
print(beatles[0])
print(numbers[1])
print(temperatures[2])

//add new items at the end. Only works with var
beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

albums = ["Folklore"]
albums.append("Fearless")
albums.append("Red")


var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
//revome at specific position
characters.remove(at: 2)
print(characters.count)
//remove everything
characters.removeAll()
print(characters.count)

//Checks if an array contains a item
let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

//sort an array (ascending order)
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
print(presidents)
//swift remembers that its not an simple array anymore
let reversedPresidents = presidents.reversed()
print(reversedPresidents)å

