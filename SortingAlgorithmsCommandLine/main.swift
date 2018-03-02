//
//  main.swift
//  SortingAlgorithmsCommandLine
//
//  Created by Gordon, Russell on 2018-02-26.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// --------------- Convenience functions ---------------

// Generates a random number between the minimum and maximum values given (inclusive)
func random(between min: UInt32, and max: UInt32) -> Int {
    return Int(arc4random_uniform(max - min + 1) + min)
}

// ----------- Start of main part of program -----------

// Ask the user if they are ready to begin
print("Press any key to generate the unsorted list.", terminator: "")

// Wait for a key to be pressed
let input = readLine()

// Make an empty array / list
var unsorted : [Int] = []

// Populate the array
//for _ in 1...10 {
//    unsorted.append( random(between: 1, and: 50) )
//}
unsorted.append(8)
unsorted.append(7)
unsorted.append(3)
unsorted.append(4)
unsorted.append(5)
unsorted.append(6)

// Show the user the contents of the array
print("-----")
print("The contents of the unsorted list:")
for i in 0...unsorted.count - 1 {
    print("Index \(i), value: \(unsorted[i])")
}
print("-----")

// ----------- Write code to sort the array here -----------
print("Now sorting the array...")

// Create an empty sorted list
var sorted : [Int] = []

// Sort the unsorted list
while unsorted.count > 0 {
    
    // Take a number off the end of the unsorted list
    let numberToBeInserted = unsorted[unsorted.count - 1]
    unsorted.remove(at: unsorted.count - 1)   // Remove number at end of the array
    
    // How many cards are in the sorted list?
    if sorted.count == 0  {
        // If there were none, just put the first card into the array
        sorted.append(numberToBeInserted)
    } else {
        // Find where to insert the new number in the sorted list
        for i in 0...sorted.count - 1 {
            if sorted[i] > numberToBeInserted{
                sorted.insert(numberToBeInserted, at: i)
                break // we've insered the number in the sorted list, now stop this loop
            }
        }
        
        
    }
    

}



// ----------- Final part of the program, show the sorted list -----------
print("-----")
print("The contents of the sorted list:")
for i in 0...unsorted.count - 1 {
    print("Index \(i), value: \(unsorted[i])")
}
print("-----")


