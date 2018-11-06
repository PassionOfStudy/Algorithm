imort Foundation

/// My Solution
func solution(_ n: Int64) -> [Int] {
    var ans: [Int] = []
    var val: Int = Int(n)
    while val > 0 {
        ans.append(val % 10)
        val /= 10
    }
    return ans
}
/// Other Solution_1
func solution(_ n:Int64) -> [Int] {
    var answer: [Int] = []
    for c in String(n).reversed() {
        answer.append(Int(String(c))!)
    }
    return answer
}
/// Other Solution_2
func solution(_ n:Int64) -> [Int] {
    let arr = String(n).compactMap { Int(String($0)) }
    return arr.reversed()
}
/// Other Solution_3
func solution(_ n:Int64) -> [Int] {
    return String(n).reversed().compactMap { Int(String($0)) }
}
/// Other Solution_4
func solution(_ n:Int64) -> [Int] {
    return String(n).reversed().map{Int(String($0))!};
}
