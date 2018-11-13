import Foundation

/// My Solution
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    var ans: [Int] = []
    for inner in 0..<commands.count {
        for index in commands[inner][0]-1...commands[inner][1]-1 {
            result.append(array[index])
        }
        ans.append(result.sorted(by: <)[commands[inner][2]-1])
        result = []
    }
    return ans
}
/// Other Solution_1(Best)
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result : [Int] = []

    for command in commands {

        let i = command[0]-1
        let j = command[1]-1
        let k = command[2]-1

        let target = array[i...j]

        let temp = target.sorted()
        result.append(temp[k])
    }

    return result
}
/// Other Solution_2
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    for command in commands {
        let start = command[0] - 1
        let end = command[1] - 1
        let sliced = Array(array[start..<(end + 1)])
        let sorted = sliced.sorted()
        result.append(sorted[command[2] - 1])
    }
    return result
}
/// Other Solution_3
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map({ (command) -> Int in
        let newArray = array[(command[0] - 1)..<command[1]]
        return newArray.sorted(by: { $0 < $1 })[command[2] - 1]     
    })
}
/// Other Solution_4
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result : [Int] = []
    for command in commands {
        result.append(array[command[0]-1...command[1]-1].sorted()[command[2]-1])
    }
    return result
}
/// Other Solution_5
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {

        var resultArray : [Int] = []
        for (_, command) in commands.enumerated() {

            let i : Int = command[0] - 1
            let j : Int = command[1] - 1
            let k : Int = command[2] - 1
            var tempArray = array[i...j] // 이걸로 하면 인덱스가 변수 : array 기준으로 선택 됨
            tempArray.sort()

            var tempArray1 : [Int] = []
            for (_, value) in tempArray.enumerated() {
                tempArray1.append(value)
            }

            resultArray.append(tempArray1[k])
        }

        return resultArray
}
