//# Question
//
//Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.
//
//Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
//- 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.
//
//## Example
//
//s = '12:01:00PM'
//
//Return '12:01:00'.
//
//s = '12:01:00AM'
//
//Return '00:01:00'.
//
//
//## Sample Input
//
//```
//07:05:45PM
//```
//
//## Sample Output
//
//```
//19:05:45
//```




import UIKit

func timeConversion(s: String) -> String {
    // Write your code here

    // Checking the type whether it's AM or PM
    let arrayType = ["AM","PM"]
    let timeType = s.index(s.startIndex, offsetBy: 8)
    let timeType2 = s.index(s.startIndex, offsetBy: 9)
    let type = "\(s[timeType])"+"\(s[timeType2])"
    
    // Getting the hours
    let hoursSecond = s.index(s.endIndex, offsetBy: -9)
    let hoursFirst = s.index(s.endIndex, offsetBy: -10)
    let hours = "\(s[hoursFirst])"+"\(s[hoursSecond])"
    
    // Storing minutes and seconds
    let minuteAndSecondStart = s.index(s.startIndex, offsetBy: 2)
    let minuteAndSecondEnd = s.index(s.endIndex, offsetBy: -2)
    let minSec = "\(s[minuteAndSecondStart..<minuteAndSecondEnd])"
    
    var addTwelve = 0
    var result = ""
    
    // If it is AM type
    // If it is 12 AM, convert it to 00.
    if arrayType[0] == type {
        if hours == "12" {
            result = "00"+"\(minSec)"
        }
        // If it is any hours in AM type, don't change anything.
        else{
            result = "\(hours)"+"\(minSec)"
        }
    }
    // If it is PM type
    // If it is 12 PM, don't change anything.
    else if arrayType[1] == type {
        if hours == "12" {
            result = "\(hours)"+"\(minSec)"
        }
        // If it is any hours except 12, add 12 hours more to convert it to the military (24-hour) time.
        else {
            addTwelve = Int(hours)! + 12
            result = String(addTwelve) + "\(minSec)"
        }
    }
    return result
}

timeConversion(s: "12:53:06AM")
