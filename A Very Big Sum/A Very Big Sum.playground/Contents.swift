
//# Question
//
//In this challenge, you are required to calculate and print the sum of the elements in an array, keeping in mind that some of those integers may be quite large.
//
//
//
//## Sample Input
//
//5
//
//1000000001 1000000002 1000000003 1000000004 1000000005
//
//
//## Sample Output
//
//5000000015


import UIKit

func aVeryBigSum(ar: [Int]) -> Int {
    // Write your code here
    var collect = 0
    for i in ar {
        collect += i
    }
    return collect
}

aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005])

