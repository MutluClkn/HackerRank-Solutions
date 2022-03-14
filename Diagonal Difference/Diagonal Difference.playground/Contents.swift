
//# Question
//
//Given a square matrix, calculate the absolute difference between the sums of its diagonals.
//
//For example, the square matrix arr is shown below:
//
//1 2 3
//
//4 5 6
//
//9 8 9
//
//The left-to-right diagonal = 1 + 5 + 9 = 15. The right to left diagonal = 3 + 5 + 9 = 17. Their absolute difference is |15 - 17| = 2.
//
//
//## Sample Input
//
//3
//
//11 2 4
//
//4 5 6
//
//10 8 -12
//
//
//
//## Sample Output
//
//15
//
//## Explanation
//
//The primary diagonal is:
//
//11
//
//   5
//
//     -12
//
//Sum across the primary diagonal: 11 + 5 - 12 = 4
//
//The secondary diagonal is:
//
//     4
//
//   5
//
//10
//
//Sum across the secondary diagonal: 4 + 5 + 10 = 19
//
//Difference: |4 - 19| = 15
//


import UIKit

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    let loop = arr.count - 1
    var index = 0
    var firstValue = 0
    var equalFirstValue = 0
    var equalSecondValue = 0
    var secondValue = 0
    var totalRslt = 0

    for i in 0...loop{
        if arr[i].count >= 2 {
            firstValue = arr[i][index]
            equalFirstValue += firstValue
            index += 1
            if index == arr.count {
                index == 0
            }
       }
    }

    index = loop

    for j in 0...loop {
        if arr[j].count >= 2 {
            secondValue = arr[j][index]
            equalSecondValue += secondValue
            index -= 1
            if index < 0 {
                index == loop
            }
        }
    }

    if equalSecondValue > equalFirstValue {
        totalRslt = equalSecondValue - equalFirstValue
    }else if equalFirstValue > equalSecondValue {
        totalRslt = equalFirstValue - equalSecondValue
    }
    return totalRslt
}

diagonalDifference(arr: [[1,2,3,],[4,5,6],[9,8,9]])
