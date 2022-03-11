import Foundation

/// My Solution
func solution(_ x:Int, _ n:Int) -> [Int64] {
    var ans: [Int] = []
    var ansValue: Int = 0
    for _ in 1...n {
        ansValue += x
        ans.append(ansValue)
    }
    return ans.map { Int64($0) }
}
/// Other Solution_1(Best)
func solution(_ x:Int, _ n:Int) -> [Int64] {
    return Array(1...n).map { Int64($0 * x) }
}
/// Other Solution_2
func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result: [Int64] = []
    for index in 1...n {
        result.append(Int64(index * x))
    }
    return result
}
