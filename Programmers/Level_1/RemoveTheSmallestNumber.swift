import Foundation

/// My Solution
func solution(_ arr:[Int]) -> [Int] {
    if arr.count == 1 {
        return [-1]
    }
    var ans: [Int] = arr
    var arrangeArr: [Int] = ans.sorted(by: >)
    var minimumValue: Int = arrangeArr[arrangeArr.count-1]
    var indexPosition: Int = 0
    for index in 0..<ans.count {
        if ans[index] == minimumValue {
            indexPosition = index
        }
    }
    ans.remove(at: indexPosition)
    return ans
}
/// Other Solution_1(Best)
func solution(_ arr:[Int]) -> [Int] {
    var index = 0
    var min: Int = Int.max
    var newArr: [Int] = []
    for i in 0..<arr.count {
        newArr.append(arr[i])

        if min > arr[i] {
            index = i
            min = arr[i]
        }
    }

    newArr.remove(at: index)
    if 0 == newArr.count {
        newArr.append(-1)
    }

    return newArr
}
/// Other Solution_2
func solution(_ arr:[Int]) -> [Int] {
    var answer = arr
    answer.remove(at:answer.index(of:answer.sorted { $0 < $1 }[0])!)
    return answer.isEmpty ? [-1] : answer
}
/// Other Solution_3
func solution(_ arr:[Int]) -> [Int] {
    var answer = arr
    answer.remove(at:answer.index(of:arr.min()!)!)
    return answer.isEmpty ? [-1] : answer
}
/// Other Solution_4
func solution(_ arr:[Int]) -> [Int] {
     var arr = arr
    if arr.count == 1 { return [-1] }
    if let min = arr.min() {
        arr.remove(at: arr.index(of: min)!)
    }
    return arr
}
/// Other Solution_5
func solution(_ arr:[Int]) -> [Int] {
    var result = [Int]()
    guard arr.count != 1 else {
        result.append(-1)
        return result
    }

    var min : Int = arr[arr.startIndex]
    for n in arr {
        if min > n {
            min = n
        }
    }

    result = arr.filter({$0 != min})


    return result
}
