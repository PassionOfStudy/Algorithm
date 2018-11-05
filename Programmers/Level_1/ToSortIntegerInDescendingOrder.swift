import Foundation

/// My Solution
func solution(_ n: Int64) -> Int64 {
    var resultStr = String(String(n).sorted(by: >))
    if let ans = Int64(resultStr) {
        return ans
    }
    return 0
}
/// Other Solution_1(Best)
func solution(_ n:Int64) -> Int64 {
    var list: [Int] = []
    var val = n

    while val > 0 {
        list.append(Int(val % 10))
        val /= 10
    }

    list.sort { $0 < $1 }
    val = 1

    var answer: Int64 = 0


    while list.count > 0 {
        answer += Int64(list.removeFirst()) * val
        val *= 10
    }

    return answer
}
/// Other Solution_2
func solution(_ n:Int64) -> Int64 {
    return Int64(String(n).sorted(by: >).reduce("") {String($0) + String($1)})!
}
/// Other Solution_3
func solution(_ n:Int64) -> Int64 {
    var arr:[Character] = []
    var result:String = ""
    for char in String(n) {
        arr.append(char)
    }
    arr.sort(by: >)
    for char in arr {
        result += String(char)
    }
    if let value = Int64(result) {
        return value
    }
    return 0
}
/// Other Solution_4
func solution(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted(by: >)))!
}
/// Other Solution_5
func solution(_ n:Int64) -> Int64 {
    var str = ""
    Array(String(n)).sorted(by:>).forEach { str += "\($0)" }
    return Int64(str)!
}
/// Other Solution_6
func solution(_ n:Int64) -> Int64 {
    let array = String(n).compactMap {String($0)}
    let number: Int64? = Int64(array.sorted(by: >).joined())
    return number!
}
