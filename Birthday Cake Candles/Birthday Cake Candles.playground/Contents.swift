
//# Question
//
//You are in charge of the cake for a child's birthday. You have decided the cake will have one candle for each year of their total age. They will only be able to blow out the tallest of the candles. Count how many candles are tallest.
//
//## Example
//
//candles = [4,4,1,3]
//
//he maximum height candles are 4 units high. There are 2 of them, so return 2.
//
//
//## Sample Input
//```
//4
//3 2 1 3
//```
//
//## Sample Output
//
//```
//2
//```




import UIKit

func birthdayCakeCandles(candles: [Int]) -> Int {
    // Write your code here
    let orderArray = candles.sorted()
    let amount = orderArray.count - 1
    var result = 0
    let theTallest = orderArray[amount]
    
    for i in candles {
        if theTallest == i {
            result += 1
        }
    }
    return result
}

birthdayCakeCandles(candles: [4,4,1,3])
