import Foundation

/// My Solution
func solution(_ num:Int) -> Int {
    var number = num
    if number == 1 { return 0 }
    for i in 1..<500 {
        if number % 2 == 0 {
            number /= 2
        } else {
            number = number*3 + 1
        }
        if number == 1 { return i }
    }
    return -1
}
/// Other Solution_1
func solution(_ num:Int) -> Int {
    var count = 0;
    var n = num;
    while n != 1 {
        n = collatz(n);
        count = count+1;
        if count >= 500 {
            return -1;
        }
    }
    return count;
}
func collatz(_ num:Int) -> Int {
    if num % 2 == 0 {
        return num/2;
    }else{
        return 3*num + 1;
    }
}
/// Other Solution_2
var count = 0

func solution(_ num:Int) -> Int {
    guard count <= 500 else { return -1 }

    if num == 1 {
        let currentCount = count

        count = 0

        return currentCount
    }

    count += 1

    if num % 2 == 0 {
        return solution(num / 2)
    } else {
        return solution((num * 3) + 1)
    }
}
/// Other Solution_3
func solution(_ num:Int) -> Int {
    var count = -1
    return collatz(Int64(num), count: &count)
}

func collatz(_ num:Int64, count:inout Int) -> Int {
    count += 1
    return (count>=500 ? -1 : (num==1 ? count : collatz(num%2==0 ? num/2 : num*3+1, count: &count)))
}
