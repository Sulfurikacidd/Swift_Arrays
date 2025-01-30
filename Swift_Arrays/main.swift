//
//  main.swift
//  Swift_Arrays
//
//  Created by Muhammad Talal on 2025-01-28.
//

import Foundation

// --- Adding elements into the array:
subscribers += ["Alice", "Bob", "Charlie", "Dory"]

// --- Iterating through an array:
for subs in subscribers {
    print(subs)
}

// Empty:
print ("Is array empty: \(isEmpty(subscribers))")

//Count:
print("Array Count: \(count(subscribers))")

//First:
print("First Element: \(String(describing: getfirstElement(subscribers)))")

//Last:
print("Last Element: \(String(describing: getlastElement(subscribers)))")

//Print:
print(subscribers)

//Contains:
print("does the element exist: \(check_element(element: "Bob", in: subscribers))")


//Append:
appendElement("Eli", in: &subscribers)
print(subscribers)


//Insert:
insertElement("Ali", in: &subscribers, at: 0)
arr_print(subscribers)

//Remove:
let removedElement = removeElement(in: &subscribers, at: subscribers.count-1)
print("Removed Element: \(removedElement)")
arr_print(subscribers)

//Updating:
updateElement("Alizay", in: &subscribers, at: 1)
arr_print(subscribers)

//Swapping:
swapElement(in: &subscribers, index_a: 0, with: 3)
arr_print(subscribers)

//Sorting:
sort_arr(arr: &subscribers)
arr_print(subscribers)

