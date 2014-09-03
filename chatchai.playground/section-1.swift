// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var tutorialTeam = 56
var editorialTeam = 23
var totalTeam = tutorialTeam + editorialTeam

totalTeam+=1
var priceIntInferred = -19
var pricentExplicit:Int = -19

var princeInferred = -19.99
var princeExplicit:Double = -19.99

var princeFloatInferred = -19.99
var princeFloadExplicit:Float = -19.99

var onSaleInferred = true
var onSaleExplicit:Bool = false

var nameInferred = "Whoopie Cushion"
var nameExplicit:String = "Whoopie Cushion"


//Array
var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs","Milk"]
//var shoppingListExplicit: [String] = ["Eggs","Milk"]

var shoppingList = ["Eggs","Milk"]
println("The shopping list contains \(shoppingList.count)items.")
shoppingList.append("Flour")
shoppingList += "Baking Powder"
shoppingList += ["Chocolate Spread","Cheese","Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
shoppingList[0...3] = ["Bananas","Apples"]
shoppingList

shoppingList += ["Baking Powder"]
//shoppingList now contains 4 items
shoppingList += ["chocolate Spread","Cheese","Butter"]
//shoppingList now contains 7 items

shoppingList.insert("Maple Syrup", atIndex: 0)
//shoppingList now contains 7 items
//"Maple Syrup" is now the first item in the list

shoppingList.append("Flour")
//shoppingList now contains 3 items, and someone is making pancakes

shoppingList += ["Baking Powder"]
firstItem = shoppingList[0]
//firstItem is equal to "Eggs"

shoppingList[4...6] = ["Bananas","Apples"]
//shoppingList now contain 6 items


//Dictionary
let array: Array<Int> = [1,2,3,4]
let dictionary = ["dog": 1,"elephant":2]


var airport: [String: String] = ["TYO": "Tokyo", "DUB": "Dublin"]
if airport.isEmpty{
    println("The airports dictionary is empty.")
}else{
    println("The airports dictionary is not empty.")
}
//prints "the airports dictionary is not empty."

println("The airports dictionary contains \(airport.count) items.")
//prints "The airports dictionary contains 2 items."




airport["LHR"] = "London"
//the airports dictionary now contains 3 items

airport["LHR"] = "London Heatrow"
//the value for "LHR" has been changed to "London Heathrow"

if let oldValue = airport.updateValue("Dublin International", forKey: "DUB"){
    println("The old value for DUB was \(oldValue).")
}
//prints "The old value for DUB was Dulin."


//Remove value Dictionary

airport["APL"] = "Apple International"
//"Apple International" is not the airport for APL, so delete it

airport["APL"] = nil
//APL has now been removed from the dictionary

if let removedValue = airport.removeValueForKey("DUB"){
    println("The removed airport's name is \(removedValue).")
}else{
    println("The airports dictionary does not contain a value for DUB.")
}
//prints "The removed airport's name is Dublin International."




















