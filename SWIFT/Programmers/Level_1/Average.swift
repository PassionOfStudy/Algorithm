import Foundation

// 내가 사용한 방법
func solution(_ arr:[Int]) -> Double {
    var sum: Int = 0
    for i in 0..<arr.count {
        sum = sum + arr[i]
    }
    return Double(sum)/Double(arr.count)
}

/// 다른 사람이 푼 풀이법_1
func solution(_ arr:[Int]) -> Double {
    var result: Double = 0
    for n in arr {
        result += Double(n)
    }
    result /= Double(arr.count)
    return result
}
/// 다른 사람이 푼 풀이법_2(간단함)
func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0, { $0 + $1 })) / Double(arr.count)
}

