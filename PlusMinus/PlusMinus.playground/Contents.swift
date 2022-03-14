import UIKit

//Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.

//Example
//arr = [1,1,0,-1,-1]
//There are  elements, two positive, two negative and one zero. Their ratios are
//2/5 = 0.4000  ,  2/5 = 0.4000  ,  1/5 = 0.2000
//Results are printed as:
//0.400000
//0.400000
//0.200000


//Print the following  lines, each to  decimals:
//1. proportion of positive values
//2. proportion of negative values
//3. proportion of zeros


//Sample Input
//STDIN           Function
//-----           --------
//6               arr[] size n = 6
//-4 3 -9 0 4 1   arr = [-4, 3, -9, 0, 4, 1]


//Sample Output
//0.500000
//0.333333
//0.166667





func plusMinus(arr: [Int]) -> Void {
    // Write your code here
    let arrCount = arr.count
    var positive : Double = 0.0
    var negative : Double = 0.0
    var ntr : Double = 0.0
    
    for i in arr{
        if i > 0 {
            positive += 1.0
        }else if i < 0 {
            negative += 1.0
        }else if i == 0{
            ntr += 1.0
        }
    }
    
    print("\(positive / Double(arrCount))")
    print("\(negative / Double(arrCount))")
    print("\(ntr / Double(arrCount))")
    
    return
    
}

plusMinus(arr: [1,1,0,-1,-1])
