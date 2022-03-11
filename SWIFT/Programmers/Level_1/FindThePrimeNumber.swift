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
/// 수정 후
func solution(_ n: Int) -> Int {
    // 에라토스테네스 원리 이용
    let length = n
    var array = Array(1...n)
    // 1부터 n까지의 수를 배열을 이용해서 만든다.
    for number in 2...length {   // 소수는 2부터 시작하므로 2부터 length까지
        var count = 2       // 소수인 number는 제외해야하므로 2부터 count를 한다.
        while number*count <= length {   // 배열의 인덱스의 범위를 넘지않기 위해서 제한한다.
            array[number*count-1] = 0   // 소수의 배수들은 소수가 될 수 없기 때문에 0으로 replace한다.
            count += 1
        }
    }
    var count = 0
    for item in array {     // 소수만 카운트하기 위해서 0이 아닌 수면 count를 더한다.
        if item != 0 { count += 1 }
    }
    return count-1  // 0으로 marking한 소수중에서 1은 소수가 아니므로 1을 제외
}
/// Other Solution_1
func solution(_ n:Int) -> Int {
var count = 0
    var array = [Bool]()

    for _ in 0...n {
        array.append(false)
    }

    for i in 2...n {
        if array[i] == false {
            count += 1

            for j in stride(from: i, through: n, by: i) {
                array[j] = true
            }
        }

    }

    return count
}
/// Other Solution_2
func solution(_ n:Int) -> Int {
    var check = [Int]()
    if n == 2 { return 1}
    else if n == 3 { return 2}
    else {
        for i in 4...n {
            for j in 2..<i {
                 if j*j >= n {break}
                 if i % j == 0 {
                 check.append(i)
                 break
                 }
            }
        }
    }

    var res = n-1-check.count
    return res
}
/// Other Solution_3
func solution(_ n:Int) -> Int {

    var count = 0
    for i in 2...n {
        var tempCount = 1
        for j in 2..<Int(sqrt(Double(i))+1) {
            if(i%j==0){
                tempCount += 1
                break
            }
        }
        count += (tempCount == 1 ? 1 : 0)
    }

    return count
}
/// Other Solution_4
func solution(_ n:Int) -> Int {
    var isPrime = Array(repeating: false, count: n+1)
    var count : Int = 0

    for num in 2...n {
        if isPrime[num] { continue }
        else { count += 1 }

        for i in 1...n/num {
            isPrime[num*i] = true
        }
    }
    return count
}
