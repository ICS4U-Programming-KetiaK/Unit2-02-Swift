//
// RecursiveFactorial.swift
//
// created by Ketia Gaelle Kaze
// created on 2022-03-31
// version 1.0
//
//
// copyright(c) 2022 Ketia Gaelle Kaze. All rights reserved.
// Recursive factorial program asks the 
// user to input a positive integer and 
// uses a recursive function to return
// the factorial of the input to the 
// console.

import Foundation

// function for the factorial 
func fact(num: Int) -> Int {
  if num == 1 || num == 0 {
    return Int(1)
  } else {
    return Int(num * fact(num: num - 1))
  }
}

// exception at runtime error
enum MyError: Error {
  case runtimeError(String)
}

// function to catch error
func catchString() throws {
  throw MyError.runtimeError("Enter a valid integer.")
}

// declaring variables
var userInput: String
var userInputInt: Int

// get user input
print("Enter a positive number: ", terminator: "")
userInput = readLine()!

do {
  userInputInt = Int(userInput) ?? -1
  if userInputInt != Int(userInput) {
    try catchString()
  }

  if userInputInt >= 0 {
    let userFactorial = fact(num: userInputInt)
    print("The factorial of \(userInputInt)! is \(userFactorial)")

  } else {
    print("Please enter a positive integer.")
  }
} catch MyError.runtimeError(let errorMessage) {
  print(errorMessage)
}
