import Foundation

/// My Solution
func solution(_ x:Int) -> Bool {
    return x % String(x).map{ Int(String($0))! }.reduce(0) { $0 + $1 } == 0 ? true : false
}
/// Other Solution_1(Best)
func solution(_ x:Int) -> Bool {
    return x % String(x).reduce(0, {$0+Int(String($1))!}) == 0
}
/// Other Solution_2
func solution(_ x:Int) -> Bool {

    var numbers = [Int]()
    var number = x

    while number > 0 {
        numbers.append(number%10)
        number /= 10
    }

    return (x%numbers.reduce(0,+)==0)
}
/// Other Solution_3
func solution(_ x:Int) -> Bool {
    var sum: Int = 0
    var val = x

    while val > 0 {
        sum += val % 10
        val /= 10
    }

    return x % sum == 0
}
