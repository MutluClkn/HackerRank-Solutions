//Staircase detail
//
//This is a staircase of size n = 4:
//
//   #
//  ##
// ###
//####
//
//Its base and height are both equal to n. It is drawn using # symbols and spaces. The last line is not preceded by any spaces.
//
//Write a program that prints a staircase of size n.
//
//Input Format
//
//A single integer, n, denoting the size of the staircase.
//
//Output Format
//
//Print a staircase of size n using # symbols and spaces.
//
//Note: The last line must have 0 spaces in it.
//
//Sample Input
//
//6
//
//Sample Output
//
//     #
//    ##
//   ###
//  ####
// #####
//######
//Explanation
//
//The staircase is right-aligned, composed of # symbols and spaces, and has a height and width of n = 6.







import UIKit

func staircase(n: Int) -> Void {
    // Write your code here
    var hashtag = "#"
    let sharp = "#"
    var spaceVariable = " "
    let spaceConstant = " "
    let spaceLoop = n - 2
    for _ in 1...spaceLoop{
        spaceVariable = spaceVariable + spaceConstant
    }
    for _ in 1...n {
        print(spaceVariable+hashtag)
        hashtag = hashtag + sharp
        if let removeIndex = spaceVariable.firstIndex(of: " "){
            spaceVariable.remove(at: removeIndex)
        }
    }
}

staircase(n: 6)
