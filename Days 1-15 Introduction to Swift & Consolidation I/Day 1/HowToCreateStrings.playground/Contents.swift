import Cocoa

//String:
let actor = "Denzel Washington"
//String with punctuation
let filename = "paris.jpg"
//String with emoji
let result = "⭐️ You win! ⭐️"
//String with quote (\" \")
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

//multiline String (Each line is a new line in Print) """ ... """
let movie = """
A day in
the life of an
Apple engineer
"""
print(movie)

//Length of string
print(actor.count)

//Make all characters in a strin uppercase
print(result.uppercased())

//If only to read date no () is needed at the end. Example: actor.count
//If swift should do something it needs () at the end. Example: result.uppercase()

//Checks if a string start with a given string
print(movie.hasPrefix("A day"))
//Checks if a string ends with
print(filename.hasSuffix(".jpg"))
