import Foundation

/// My Solution
func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    let inputString = String(n)
    let inputCharacterArr = Array(inputString)
    var inputStringArr: [String] = []
    var inputIntegerArr: [Int] = []
    for item in inputCharacterArr {
        inputStringArr.append(String(item))
    }
    for item in inputStringArr {
        inputIntegerArr.append(Int(item)!)
    }
    for item in inputIntegerArr {
        answer += item
    }
    return answer
}
/// Other Solution_1(Best)
func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    var val = n

    while val > 0 {
        answer += val % 10
        val /= 10
    }

    return answer
}
/// Other Solution_2
func solution(_ n:Int) -> Int
{
    var answer:Int = 0

    for i in String(n)
    {
        answer += Int(String(i))!
    }

    return answer
}
/// Other Solution_3
func solution(_ n:Int) -> Int
{
    let string:String = String(n)
    return string.reduce(0) { $0 + Int(String($1))!}
}
