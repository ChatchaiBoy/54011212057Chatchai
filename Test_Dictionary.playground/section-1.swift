// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let array: Array<Int> = [1,2,3,4]
let dictionary: Dictionary<String, Int> = ["dog":1, "elephant":2]

var airports: [String: String] = ["TYO": "Tokyo" , "DUB": "Dublin" , "BKK": "Bangkok"]

if (airports.isEmpty) {
    println("The airports dictionary is empty.")
    
} else{
    println("The airports dictionary is not empty.")
}

airports["BKK"] = "London"
airports["BKK"] = "London Heathrow"
airports

