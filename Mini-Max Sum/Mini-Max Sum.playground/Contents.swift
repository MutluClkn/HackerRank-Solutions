
//Question
//
//Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.
//
//Example
//
//arr = [1,3,5,7,9]
//
//The minimum sum is 1 + 3 + 5 + 7 = 16 and the maximum sum is 3 + 5 + 7 + 9 = 24. The function prints
//
//16 24
//
//
//Sample Input
//
//1 2 3 4 5
//
//
//Sample Output
//
//
//10 14
//



import UIKit

func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here
    var firstArr = arr.sorted()
    var secondArr = arr.sorted()
    firstArr.removeLast()
    secondArr.removeFirst()

    var minResult = 0
    var maxResult = 0

    for i in firstArr {
        minResult += i
    }
    for j in secondArr {
        maxResult += j
    }
    print("\(minResult) \(maxResult)")
}

miniMaxSum(arr: [3,7,5,9,1])
