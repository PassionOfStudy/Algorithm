import Foundation

/// My Solution
func solution(_ a:Int, _ b:Int) -> Int64 {
    var firstNum: Int = a
    var secondNum: Int = b
    var temp: Int = 0
    var result: Int = 0
    if firstNum > secondNum {
        temp = firstNum
        firstNum = secondNum
        secondNum = temp
    }
    for i in firstNum...secondNum {
        result += i
    }
    return Int64(result)
}
/// Other Solution_1(Best)
func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64(Array(a > b ? b...a : a...b).reduce(0, +))
  }
/// Other Solution_2
func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64(a + b) * Int64(max(a, b) - min(a, b) + 1) / Int64(2)
} // Use the MathFunction 두 정수 사이의 합
/// Other Solution_3
func solution(_ a:Int, _ b:Int) -> Int64 {

    let minValue = a < b ? a : b
    let maxValue = a > b ? a : b

    var value: Int64 = 0
    for i in minValue...maxValue {
        value += i
    }

    return value
}

