import Foundation

/// My Solution
import Foundation

func solution(_ s:String) -> Bool
{
    var count = 0
    for char in s {
        if char == "p" || char == "P" {
            count += 1
        } else if char == "y" || char == "Y" {
            count -= 1
        }
    }
    return count == 0 ? true : false
}
/// Other Solution_1(Best)
import Foundation

func solution(_ s:String) -> Bool
{
    let string = s.lowercased()
    return string.components(separatedBy: "p").count == string.components(separatedBy: "y").count
}
/// Other Solution_2
import Foundation

func solution(_ s:String) -> Bool
{
    var flag: Int = 0
    for ch in s.uppercased().sorted() {
        switch ch {
        case "P":
            flag += 1
        case "Y":
            flag -= 1
        default:
            break
        }
    }
    return flag == 0
}
/// Other Solution_3
import Foundation

func solution(_ s: String) -> Bool {
    var pCount = 0
    var yCount = 0

    for i in s.lowercased() {
        if i == "p" {
            pCount += 1
        } else if i == "y" {
            yCount += 1
        }
    }

    return pCount == yCount ? true : false
}
/// Other Solution_4
import Foundation

func solution(_ s:String) -> Bool
{
    return s.lowercased().filter { $0 == "p" }.count == s.lowercased().filter { $0 == "y" }.count
}
