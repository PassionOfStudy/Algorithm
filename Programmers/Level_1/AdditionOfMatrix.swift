import Foundation

/// My Solution
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = Array(repeating: Array(repeating: 0, count: arr1[arr1.startIndex].count), count: arr1.count)
    for i in 0..<result.count {
        for j in 0..<result[i].count {
            result[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return result
}
/// Other Solution_1(Best)
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return zip(arr1, arr2).map{zip($0,$1).map{$0+$1}}
}
/// Other Solution_2
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
 let capacity = arr1[0].count
    var count = 1
    var outCount = 0
    var newArr = arr1.flatMap { $0 }
    var newArr2 = arr2.flatMap { $0 }
    var result = arr1

    for index in 0...newArr.count-1 {
        newArr[index] = newArr[index] + newArr2[index]
    }
    if newArr.count == 2 {
        return [[newArr[0]], [newArr[1]]]
    }

    for num in newArr {
        if count == capacity+1 {
            outCount += 1
            count = 1
        }

        result[outCount][count-1] = num
        count += 1
    }
    return result
}
/// Other Solution_3
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result : [[Int]] = [[Int]]()
    var resultIn : [Int] = [Int]()

    for (index,value) in arr1.enumerated() {

        for (index2, value2) in value.enumerated() {
            resultIn.append(Int(value2) + Int((arr2[index])[index2]))
        }

        result.append(resultIn)
        resultIn.removeAll()
    }

    return result
}
/// Other Solution_4
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var res = [[Int]]()
    for i in 0..<arr1.count {
        var temp1 = arr1[i]
        var temp2 = arr2[i]
        var mid = [Int]()
        for j in 0..<temp1.count {
            mid.append(temp1[j]+temp2[j])
        }
        res.append(mid)
    }

    return res
}
