//
//  Arrays.swift
//  Swift_Arrays
//
//  Created by Muhammad Talal on 2025-01-28.
//

import Foundation


// --- Chapter 7 - Arrays : Ordered (indexed) collection of values.

// --- Declaration and init:

let evenNumbers: [Int] = [2,4,6,8,10] //immuatable array - CANNOT add delete or update element(s).

// --- Empty Array:

var subscribers: [String] = [] //mutable array - can add delete or update element(s). Empty array cannot infer type.

// --- Properties & methods:
// there are many properties and methods you can use on arrays. It makes the job alot easier.

// add elements to the array:


// check to see if our array isEmpty:
func isEmpty() -> Bool {
    return subscribers.isEmpty
}


// check how many elements are in the array:
func count() -> Int {
    return subscribers.count
}

// get first element of array:
func firstElement(_ arr: [Any]) -> Any? {
    return arr.first
}

// get last element of array:
func lastElement(_ arr: [Any]) -> Any? {
    return arr.last
}

// There are .min() & .max() to check corresponding value(s).

// print the elements of an array:
func arr_print(_ arr: [Any]) {
    print(arr)
}

// use subscript to access elements in array:
var first_element = subscribers[0] // [index are from 0 till count - 1]

// checking for an element in an array:
func check_element(element: String, in arr: [String]) -> Bool { //note that you CANNOT use Any type here as it requires hashables !!!
    
    if arr.contains(element) {
        return true
    } else {
        return false
    }
    
//    arr.firstIndex(of: <#T##String#>)
    
//    arr.remove
}

// remove element from an array:




