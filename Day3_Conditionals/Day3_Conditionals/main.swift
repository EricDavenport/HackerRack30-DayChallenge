//
//  main.swift
//  Day3_Conditionals
//
//  Created by Eric Davenport on 11/19/20.
//

import Foundation

// MARK: Day 3: Conditionals
/*
 Objective
 In this challenge, we're getting started with conditional statements. Check out the Tutorial tab for learning materials and an instructional video!
 
 Task
 Given an integer, n, perform the following conditional actions:
 
 If n is odd, print Weird
 If n is even and in the inclusive range of 2 to 5, print Not Weird
 If n is even and in the inclusive range of 6 to 20, print Weird
 If n is even and greater than 20, print Not Weird
 Complete the stub code provided in your editor to print whether or not n is weird.
 
 Input Format
 
 A single line containing a positive integer, n.
 
 Constraints
 1 <= n <= 100
 
 Output Format
 
 Print Weird if the number is weird; otherwise, print Not Weird.
 
 Sample 0
 Input: 3
 Output: Weird
 Explanation: n is odd and odd numbers are weird, so we print Weird.
 
 Sample 1:
 Input: 24
 Output: Not Weird
 Explanation: n > 20 and n is even, so it isn't weird. Thus, we print Not Weird.
 */


// MARK: Talk through
/*
 conditional statements
 input: Int -> n
 condition is based on the input int
 conditions:
 n is an odd number -> print Weird
 n is even && n is between 2 and 5 (2, 4) -> print Not Wierd
 n is even and n is between 6 and 20 (6, 8, 10, 12, 14, 16, 18, 20) -> print Weird
 n is even and greater than 20 (21+) -> print Not Weird
 */


//guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else { fatalError("Bad input") }
//

func weirdOrNot(n: Int) {
  if n % 2 == 1 {
    print("Weird")
  }
  else if (n >= 2 && n <= 5) && n % 2 == 0 {
    print("Not Weird")
  }
  else if (n >= 6 && n <= 20) && n % 2 == 0 {
    print("Weird")
  }
  else if n % 2 == 0 && n > 20 {
    print("Not Weird")
  }
  
}

weirdOrNot(n: 3)
weirdOrNot(n: 24)
weirdOrNot(n: 2)
weirdOrNot(n: 30)
weirdOrNot(n: 20)
weirdOrNot(n: 19)
weirdOrNot(n: 100)
weirdOrNot(n: 99)





// MARK: Day 4: Class vs. Instance

/*
 Objective
 In this challenge, we're going to learn about the difference between a class and an instance; because this is an Object Oriented concept, it's only enabled in certain languages. Check out the Tutorial tab for learning materials and an instructional video!
 
 Task
 Write a Person class with an instance variable, age, and a constructor that takes an integer, initialAge, as a parameter. The constructor must assign initialAge to age after confirming the argument passed as initialAge is not negative; if a negative argument is passed as initialAge, the constructor should set age to 0 and print Age is not valid, setting age to 0.. In addition, you must write the following instance methods:
 
 1. yearPasses() should increase the age instance variable by 1.
 2. amIOld() should perform the following conditional actions:
 If age <= 13, print You are young..
 If age >= 13 and age <= 18, print You are a teenager..
 Otherwise, print You are old..
 
 To help you learn by example and complete this challenge, much of the code is provided for you, but you'll be writing everything in the future. The code that creates each instance of your Person class is in the main method. Don't worry if you don't understand it all quite yet!
 
 Note: Do not remove or alter the stub code in the editor.
 
 Input Format
 
 Input is handled for you by the stub code in the editor.
 
 The first line contains an integer, T (the number of test cases), and the T subsequent lines each contain an integer denoting the age of a Person instance.
 
 Constraints
 1 <= T <= 4
 -5 <= age <= 30
 
 Output Format
 
 Complete the method definitions provided in the editor so they meet the specifications outlined above; the code to test your work is already in the editor. If your methods are implemented correctly, each test case will print 2 or 3 lines (depending on whether or not a valid initialAge was passed to the constructor).
 
 Sample Input:
 4
 -1
 10
 16
 18
 
 Sample Output:
 Age is not valid, setting age to 0.
 You are young.
 You are young.
 
 You are young.
 You are a teenager.
 
 You are a teenager.
 You are old.
 
 You are old.
 You are old.
 Explanation
 
 Test Case 0: initialAge = -1
 Because initialAge < 0, our code must set age to 0 and print the "Age is not valid..." message followed by the young message. Three years pass and age = 3, so we print the young message again.
 
 Test Case 1: initialAge = 10
 Because initialAge < 13, our code should print that the person is young. Three years pass and age = 13, so we print that the person is now a teenager.
 
 Test Case 2: initialAge = 16
 Because 13 <= initialAge < 18, our code should print that the person is a teenager. Three years pass and age = 19, so we print that the person is old.
 
 Test Case 3: initialAge = 18
 Because initialAge >= 18, our code should print that the person is old. Three years pass and the person is still old at age = 21, so we print the old message again.
 
 The extra line at the end of the output is supposed to be there and is trimmed before being compared against the test case's expected output. If you're failing this challenge, check your logic and review your print statements for spelling error
 */

// MARK: Talk Through
/*
 set up initializer - confirm intial age isn't negative -> if so print "Age is not valid" set age to 0
 yearsPassed() -> t
 */

class Person {
  var age: Int = 0
  
  init(initialAge: Int) {
    // Add some more code to run some checks on initialAge
    guard initialAge >= 0 else {
      age = 0
      print("Age is not valid, setting age to 0.")
      return
    }
    age = initialAge
  }
  
  func amIOld() {
    // Do some computations in here and print out the correct statement to the console
    if age < 13 {
      print("You are young.")
    }
    else if age >= 13 && age < 18 {
      print("You are a teenager.")
    }
    else {
      print("You are old.")
    }
  }
  
  func yearPasses() {
    // Increment the age of the person in here
    age += 1
  }
}

