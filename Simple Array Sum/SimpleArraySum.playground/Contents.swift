//# Question
//
//Given an array of integers, find the sum of its elements.
//
//For example, if the array ar = [1,2,3], 1+2+3 = 6 , so return 6.
//
//
//## Sample Input
//
//1 2 3 4 10 11
//
//
//## Sample Output
//
//31
//
//## Explanation
//
//We print the sum of the array's elements:
//
//1 + 2 + 3 + 4 + 10 + 11 = 31.


import UIKit

func simpleArraySum(ar: [Int]) -> Int {
    // Write your code here
    var sumOfElements:Int = 0
    let elementAmount = ar.count
    for number in 0...elementAmount - 1 {
        sumOfElements += ar[number]
    }
    return sumOfElements
}

simpleArraySum(ar: [1,2,3,4,10,11])
