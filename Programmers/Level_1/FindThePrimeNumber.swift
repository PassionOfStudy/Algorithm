import Foundation

/// My Solution
// 실행시간 초과 O(n^2)
func solution(_ n:Int) -> Int {
    var array: [Int] = []
    var count: Int = 0
    for i in 2...n {
        for j in 1...i {
            if i%j == 0 {
                array.append(j)
                if array.count > 2 {
                    break
                }
            }
        }
        if array.count == 2 {
            count += 1
        }
        array = []
    }
    return count
}

