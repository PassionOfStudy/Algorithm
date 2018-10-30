import Foundation

/// My Solution
func solution(_ phone_number:String) -> String {
    let phoneNumberCount = phone_number.count
    let coveredPhoneNumberCount = phoneNumberCount - 4
    var coveredPhoneNumber: String = ""
    var loopCount = 1
    for ch in phone_number {
       if loopCount <= coveredPhoneNumberCount {
           coveredPhoneNumber += "*"
           loopCount += 1
       } else {
           coveredPhoneNumber += String(ch)
       }
    }

    return coveredPhoneNumber
}
/// Other Solution_1(Best)
func solution(_ phone_number:String) -> String {
    return String(repeating:"*", count:phone_number.count-4)+phone_number.suffix(4)
}
/// Other Solution_2
func solution(_ phone_number:String) -> String {
    var result = ""
    for (index, value) in phone_number.enumerated()
    {
        if(index > phone_number.count - 5)
        {
            result += String(value)
        }else{
            result += "*"
        }
    }
    return result
}
/// Other Solution_3
func solution(_ phone_number:String) -> String {
    guard phone_number.count > 4 else { return phone_number }
    return String(phone_number.enumerated().map{($0.offset<phone_number.count-4 ? Character("*") : $0.element)})
}
