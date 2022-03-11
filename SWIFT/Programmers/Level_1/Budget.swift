import Foundation

/// My Solution
func solution(_ d:[Int], _ budget:Int) -> Int {
    let arrangedDepartments = d.sorted(by: < )
    var budgets = budget
    var count = 0
    for item in arrangedDepartments {
        if budgets >= item {
            budgets -= item
            count += 1
        } else {
            break
        }
    }
    return count
}
/// Other Solution
func solution(_ d:[Int], _ budget:Int) -> Int {

    var possibleCount = 0
    var total = 0

    for value in d.sorted() {
        total += value
        if total <= budget {
            possibleCount += 1
        }else{
            break
        }
    }
    return possibleCount
}
/// Other Solution
func solution(_ d:[Int], _ budget:Int) -> Int {
    var costs = d
    costs.sort()
    var budgetSum = budget
    var count = 0
    while count < costs.endIndex && budgetSum - costs[count] >= 0 {
        budgetSum -= costs[count]
        count += 1
    }
    return count
}

