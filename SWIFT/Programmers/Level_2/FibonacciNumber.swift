import Foundation

/// My Solution
let max: Int = 100000
let division: Int = 1234567
var dp: [Int] = makeDP(max)

func solution(_ n:Int) -> Int {
    return UpgradedFibonacci(n)
}
func makeDP(_ n: Int) -> [Int] {
    return Array(repeating: 0, count: n)
}
func UpgradedFibonacci(_ n: Int) -> Int {
    var index = n - 1
    if n <= 1 { return n }
    if dp[index] != 0 {
        return dp[index]
    } else {
        dp[index] = UpgradedFibonacci(n-1) + UpgradedFibonacci(n-2)
    }
    return dp[index] % division
}
