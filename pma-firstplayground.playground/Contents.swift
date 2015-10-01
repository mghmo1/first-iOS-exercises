//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myVariable = 8

myVariable = 10

let constant = "Do not change"

//constant = "No change available"

let constant2 : float_t = 4.3

// ARRAY AND DICTIONARY //

let array = ["item1", "item2", "item3"]

//array[1] = "itemno1"

var dictionary = [
    
    "deutsch" : "German",
    "englisch" : "English"
]

dictionary["spanisch"] = "Spanish"

var counter = 0


for String in array {
println(array[counter])
    counter = counter + 1
}


// FUNCTIONS //

func calculateAge (#year: Int, #born: Int) -> Int{
    
    return year - born
}

var age = calculateAge (year: 2015, born: 1993)
//var age2 = calculateAge(2015, 1993)

println("Age:  \(age)")

// CLASSES AND STRUCTURES //

struct point {
    var x: Int
    var y: Int
}

var point1 = point(x: 3, y: 5)
var point2 = point(x: 2, y: 4)

var rect = Rectangle(p1: point1, p2: point2)

println (rect.width())
println (rect.height())


class Rectangle {
    
    var p1 = point(x: 0, y: 0)
    var p2 = point(x: 0, y: 0)
    
    init (p1: point, p2: point) {
        self.p1 = p1
        self.p2 = p2
    }

    
    func width() -> Int {
        if (p1.x > p2.x) {
            return p1.x - p2.x
        }
        else {
            return p2.x - p1.x
        }
    }
    
    func height() -> Int {
        if (p1.y > p2.y) {
            return p1.y - p2.y
        }
        else {
            return p2.y - p1.y
        }
    }
}


// INHERITANCE AND PROTOCOLS //

protocol isNamed {
    var forename : String {get set}
    var lastname : String {get set}
    func name() -> String
    
}

class Mammal {
    
    func breath () {
        println("I am breathin'")
    }
}

class Human: Mammal, isNamed {
    
    var forename: String
    var lastname: String
    
    init (forename: String, lastname: String) {
        self.forename = forename
        self.lastname = lastname
    }
    
    func speak (language: String) {
        println ("I speak \(language)")
    }
    
    func name() -> String {
        return "My name is \(forename) \(lastname)"
    }
    
}


var person = Human(forename: "Helles", lastname: "Mammut")

person.name()
person.breath()
person.speak("German")


// OPTIONALS //

func rollTheDice() -> Int? {
        let n = Int (arc4random_uniform(6))
    var r: Int?
        if n > 3 {        r=n
    }
        return r }


func win() -> {
    let won:Int? = rolltheDice()
    
    if won != nil {
        println("You WIN!")
    }
    else {
        println("You LOOSE!")
    }
}















































