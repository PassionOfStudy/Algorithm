import Foundation

// My Solution
func solution(_ n:Int) -> Int {
    var arr:[Int] = []
    var sum: Int = 0
    for i in 1..<n+1 {
        if n % i == 0 {
            arr.append(i)
        }
    }
    for j in 0..<(arr.count-1)+1 {
        sum += arr[j]
    }
    return sum
}
// Other Solution_1(Best)
func solution(_ n:Int) -> Int {
    var sum = 0
    for i in 1..<n+1 {
        if n % i == 0 {
            sum += i
        }
    }
    return sum
}
// Other Solution_2
func solution(_ n:Int) -> Int {
    guard n != 0 else {
        return 0
    }
    return Array(1...n).filter{n % $0 == 0}.reduce(0, +)
}

