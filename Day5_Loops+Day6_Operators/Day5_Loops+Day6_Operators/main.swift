//
//  main.swift
//  Day5_Loops+Day6_Operators
//
//  Created by Eric Davenport on 11/23/20.
//

import Foundation

// MARK: Day 5: Loops
/*
 Objective
 In this challenge, we're going to use loops to help us do some simple math. Check out the Tutorial tab to learn more.

 Task
 Given an integer, n, print its first 10 multiples. Each multiple n * i (where 1 <= i >= 10) should be printed on a new line in the form: n x i = result.

 Input Format

 A single integer, n.

 Constraints
 2 <= n >= 20

 Output Format

 Print 10 lines of output; each line i (where 1 <= i >= 10) contains the result of n * i in the form:
 n x i = result.

 Sample Input
 2
 
 Sample Output

 2 x 1 = 2
 2 x 2 = 4
 2 x 3 = 6
 2 x 4 = 8
 2 x 5 = 10
 2 x 6 = 12
 2 x 7 = 14
 2 x 8 = 16
 2 x 9 = 18
 2 x 10 = 20

 */



guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for num in 1...10 {
    let result = n * num
    print("\(n) x \(num) = \(result)")
}

/*
 result
 
 2
 2 x 1 = 2
 2 x 2 = 4
 2 x 3 = 6
 2 x 4 = 8
 2 x 5 = 10
 2 x 6 = 12
 2 x 7 = 14
 2 x 8 = 16
 2 x 9 = 18
 2 x 10 = 20
 Program ended with exit code: 0
 */


// MAIN: Day 6: Review'

/*
 print even and odd values with a space between them,
 example 0:
 Hacker
 Hce akr
 
 example 1:
 rank
 rn ak
 
 loop through the word
 I bvelieve i need to do enumerated to have access to the index
 if indecx is even = add it to the evenWord variable
 if index is an odd number (beginning with 0) add to oddWord variable
 print(\(oddWord) \(evenWord))
 */

// Test code beneath hear
var word = "Hacker"
var oddWord = String()
var evenWord = String()

 
  for (index, letter) in word.enumerated() {
    if index % 2 == 0 {
      evenWord.append(letter)
    } else {
      oddWord.append(letter)
    }
  }

print("\(evenWord) \(oddWord)")


// HackerRank code beneath

import Foundation
import Darwin

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)
  
    // Print the even-indexed characters
    // Write your code here
    var evenWord = String()
    var oddWord = String()
    for (index, letter) in string.enumerated() {
        if index % 2 == 0 {
            evenWord.append(letter)
        } else {
            oddWord.append(letter)
        }
    }
    print(evenWord, terminator: "")
    // Print a space
    print(" ", terminator: "")
  
    // Print the odd-indexed characters
    // Write your code here
    print(oddWord, terminator: "")
    // Print a newline
    print()
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}
