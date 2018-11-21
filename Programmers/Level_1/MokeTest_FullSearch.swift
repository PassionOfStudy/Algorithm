import Foundation

/// My Solution
func solution(_ answers:[Int]) -> [Int] {
    var result: [Int] = []
    let answerCount = answers.count
    let testerOne: [Int] = testerOneSolution(answerCount)
    let testerTwo: [Int] = testerTwoSolution(answerCount)
    let testerThree: [Int] = testerThreeSolution(answerCount)
    var testerAnswer: [Int: [Int]] = [1: testerOne, 2: testerTwo, 3: testerThree]
    var answerSum: [Int] = []
    
    for index in 0..<testerAnswer.count {
        answerSum.append(checkCorrectCouting(rightAnswer: answers, testerAnswer: testerAnswer[index+1]!))
    }
    for index in 0..<answerSum.count {
        if answerSum[index] == answerSum.sorted(by: >)[0] { result.append(index+1) }
    }
    
    return result
}
func checkCorrectCouting(rightAnswer: [Int], testerAnswer: [Int]) -> Int {
    var correctCount: Int = 0
    var index: Int = 0
    for item in rightAnswer {
        if item == testerAnswer[index] {
            correctCount += 1
        }
        index += 1
    }
    return correctCount
}
func testerOneSolution(_ answerCount: Int) -> [Int] {
    var result: [Int] = []
    for index in 1...answerCount {
        if index % 5 == 0 {
            result.append(5)
        } else {
            result.append(index % 5)
        }
    }
    return result
}
func testerTwoSolution(_ answerCount: Int) -> [Int] {
    var result: [Int] = []
    var counting: Int = 0
    for index in 0..<answerCount {
        let test: [Int] = [1,3,4,5]
        if index % 2 == 0 {
            result.append(2)
        } else {
            result.append(test[counting%4])
            counting += 1
        }
    }
    return result
}
func testerThreeSolution(_ answerCount: Int) -> [Int] {
    var result: [Int] = []
    for index in 0..<answerCount {
        let test: [Int] = [3,3,1,1,2,2,4,4,5,5]
        result.append(test[index % 10])
    }
    return result
}
/// Other Solution_1(Best)
let firstPattern = [1,2,3,4,5]
let secondPattern = [2,1,2,3,2,4,2,5]
let thirdPattern = [3,3,1,1,2,2,4,4,5,5]

func solution(_ answers:[Int]) -> [Int] {

    let firstAnswer = makeAnswer(pattern: firstPattern, count: answers.count)
    let secondAnswer = makeAnswer(pattern: secondPattern, count: answers.count)
    let thirdAnswer = makeAnswer(pattern: thirdPattern, count: answers.count)

    let firstPoint = (point(answers1: firstAnswer, answers2: answers), 1)
    let secondPoint = (point(answers1: secondAnswer, answers2: answers), 2)
    let thirdPoint = (point(answers1: thirdAnswer, answers2: answers), 3)

    let result: [(Int, Int)] = [firstPoint, secondPoint, thirdPoint].reduce([]) { (result, arg1) -> [(Int, Int)] in

        guard let value = result.first else {
            return [arg1]
        }

        if value.0 > arg1.0 {
            return result
        } else if value.0 == arg1.0 {
            return result + [arg1]
        }

        return [arg1]
    }


    return result.map({ $0.1 }).sorted(by: { $0 <= $1 })
}


func point(answers1: [Int], answers2: [Int]) -> Int {

    var result = 0

    for (offset, answer) in answers2.enumerated() {
        if answers1[offset] == answer {
            result += 1
        }
    }

    return result
}

func makeAnswer(pattern: [Int], count: Int) -> [Int] {
    guard pattern.count < count else {
        return Array(pattern.dropLast(pattern.count - count))
    }

    var result = pattern

    while result.count < count {
        result.append(contentsOf: Array(pattern))
    }

    return Array(result.dropLast(result.count - count))
}
/// Other Solution_2
func solution(_ answers:[Int]) -> [Int] {

    let q2 = [1, 3, 4, 5]
    let q3 = [3, 1, 2, 4, 5]
    var cnt1 = 0; var cnt2 = 0; var cnt3 = 0
    for i in 0..<answers.count {
        let a1 = i % 5+1
        let a2 = i % 2 == 0 ? 2 : q2[(i-1)/2%4]
        let a3 = q3[i/2%5]

        if a1 == answers[i] {
            cnt1 += 1
        }
        if a2 == answers[i] {
            cnt2 += 1
        }
        if a3 == answers[i] {
            cnt3 += 1
        }
    }
    let mx = max(cnt1, max(cnt2, cnt3))
    let cs = [cnt1, cnt2, cnt3]
    var sender = [Int]()
    for i in 0..<cs.count {
        if mx == cs[i] {
            sender.append(i+1)
        }
    }
    return sender
}
/// Other Solution_3
func solution(_ answers:[Int]) -> [Int] {
    var sps = [[1,2,3,4,5], [2,1,2,3,2,4,2,5], [3,3,1,1,2,2,4,4,5,5]]
    func checkAnswers(_ patterns: [Int], _ answers: [Int]) -> Int {
        var score = 0
        for (index, answer) in answers.enumerated() {
            if(answer == patterns[index % patterns.count]) {
                score = score + 1
            }
        }
        return score
    }

    let scores = sps.map({ checkAnswers($0, answers) })
    let maxScore = scores.max()

    return scores.enumerated().reduce([], { (acc, item) -> [(Int, Int)] in
        var newResult = acc
        if(item.1 == maxScore) {
            newResult.append((item.0 + 1, item.1))
            return newResult
        }
        return acc
    }).sorted(by: { $0.1 > $1.1 }).map({ $0.0 })
}
/// Other Solution_4
func solution(_ answers:[Int]) -> [Int] {
    let people: [[Int]] =  [[1,2,3,4,5], [2,1,2,3,2,4,2,5], [3,3,1,1,2,2,4,4,5,5]]

    var checked = [0,0,0]

    for i in 0..<answers.count {
        let indexs = [i % people[0].count, i % people[1].count, i % people[2].count]

        people.enumerated().forEach {
            guard answers[i] == $0.element[indexs[$0.offset]] else { return }
            checked[$0.offset] += 1
        }
    }

    let max = checked.max()!

    return checked.enumerated().filter { $0.element == max }.map { $0.offset + 1}.sorted()
}

