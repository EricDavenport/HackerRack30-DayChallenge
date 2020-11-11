//
//  main.swift
//  HackerRankDay1
//
//  Created by Eric Davenport on 11/11/20.
//
//
import Foundation

// DAY 1 - Data Types
var i = 4
var d = 4.0
var s = "HackerRank "

// Declare second integer, double, and String variables.
var int = Int()
var double = Double()
var string = String()

// Read and save an integer, double, and String to your variables.
int = Int(readLine()!) ?? 0
double = Double(readLine()!) ?? 0.0
string = readLine() ?? "no string"

// Print the sum of both integer variables on a new line.
print(int + i)

// Print the sum of the double variables on a new line.
print(double + d)

// Concatenate and print the String variables on a new line
print(s + string)
// The 's' variable above should be printed first.


// Mark: White board work
/*
print("Hello, World!")

let string = 2

var test = Int(readLine()!)

print(string + test!)
*/

// Day 2 - operators
let meal_cost = Double(readLine()!)
let tip_percent = Int(readLine()!)
let tax_percent = Int(readLine()!)

let tip = (Double(tip_percent!) / 100.00) * meal_cost!
let tax = (Double(tax_percent!) / 100.00) * meal_cost!
let mealTotal = round(meal_cost! + tip + tax)
print("Tip = \(tip)")
print("Tax = \(tax)")
print(meal_cost!)
print(round(meal_cost!))
print(Int(mealTotal))
print(mealTotal)
//func printTotal() {
//  print(mealTotal)
//}
//printTotal()

