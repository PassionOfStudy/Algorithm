import Foundation

/// My Solution
func solution(_ num: Int) -> String {
    var result: String = ""
    if num % 2 == 0 {
        result = "Even"
    } else {
        result = "Odd"
    }
    return result
}
/// Other Solution_1(Best)
func solution(_ num: Int) -> String {
    return num%2 == 0 ? "Even" : "Odd"
}
/// Other Solution_2
func solution(_ num:Int) -> String {
    if((num%2)==0)
    {
        return "Even"
    }else{
        return "Odd"
    }
}

