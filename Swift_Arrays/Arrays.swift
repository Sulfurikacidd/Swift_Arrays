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


// ----------------------------------------------------------------//




// --- Properties & methods:
// there are many properties and methods which you can use on arrays. It makes the job alot easier.


//.isEmpty:

// check to see if our array isEmpty:
func isEmpty(_ arr: [Any]) -> Bool {
    return arr.isEmpty
}


//.count:

// check how many elements are in the array:
func count(_ arr: [Any]) -> Int {
    return arr.count
}

//.first:

// get first element of array:
func getfirstElement(_ arr: [Any]) -> Any? {
    return arr.first
}

//.last:

// get last element of array:
func getlastElement(_ arr: [Any]) -> Any? {
    return arr.last
}

// There are .min() & .max() to check corresponding value(s).


//print:

// print the elements of an array:
func arr_print(_ arr: [String]) {
    print(arr)
}

//subscript[index]:

// use subscript to access elements in array:
var first_element = subscribers[0] // [index are from 0 till count - 1]


//.contains:

// checking for an element in an array:
func check_element(element: String, in arr: [String]) -> Bool { //note that you CANNOT use "Any" type here as it requires hashables !!!
    
    if arr.contains(element) {
        return true
    } else {
        return false
    }
}


//.append:

// "appending" element into the array - adding element to the last of the array:
func appendElement(_ element: String, in arr: inout [String]) {
    arr.append(element)
    
    // you can also append element(s) using += operator e.g:
    // arr += [element 1, element 2, element 3]
}


//.insert:

// inserting element into the array at a specific index:
func insertElement(_ element: String, in arr: inout [String], at index: Int) { // Please note the use of "inout" here.
    arr.insert(element, at: index)
}


//.remove: remove func removes the element out of the array and return it.

// removing elements from the array:
func removeElement(in arr: inout [String], at index: Int) -> String {
    return arr.remove(at: index)
}

// updating elements in an array:

// you can use subscript to update an element in array:
func updateElement(_ element: String, in arr: inout [String], at index: Int) {
    arr[index] = element
}

//.swapAt

//moving elements in an array using swap func
func swapElement(in arr: inout [String], index_a: Int, with index_b: Int) {
    arr.swapAt(index_a, index_b)
}

//.sort() & .sorted()

// sorting an array:
func sort_arr(arr: inout [String]) { //note the use of Strings and not Any.
    arr.sort()
    
    //if you like to leave the original array untouched and return a sorted copy instead, use "sorted()" instead of sort().
}


// ----------------------------------------------------------------//

/*
    Run-time operations for array:
    
    Accessing Element: Fixed or Constant time O(1). Because array sizes are known.
    
    Inserting Element: Depends on the position where you add in the element:
                        - Front = Linear time O(N) as all the elements have to move up one space.
                        - Middle = Linear time O(N) as half the elements has to move up one space.
                        - Last = Constant time O(1).
    
    Deleting Element: Same as inserting elements.
    
    Searching Element:  Best Case: O(1) (element found immediately at index 0).
                        Worst/Average Case: O(n) (element not found or at the end).
 
 
 */
