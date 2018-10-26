import Foundation

/// My Solution
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result: [Int] = []
    for i in 0..<arr.count {
        if arr[i] % divisor == 0 {
            result.append(arr[i])
        }
    }
    if result.count == 0 {
        result.append(-1)
    }
    return result.sorted(by: <)
}
/// Other Solution_1(Best)
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let array = arr.sorted().filter{ $0 % divisor == 0 }
    return  array == [] ? [-1] : array
}
/// Other Solution_2
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var arrTemp:Array<Int> = Array<Int>()

        for i in 0..<arr.count {
            if arr[i]%divisor==0{
                arrTemp.append(arr[i])
            }
        }

    if arrTemp.isEmpty{
        return [-1]
    }
    arrTemp.sort()

    return arrTemp
}

