import Foundation

/// My Solution
func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    let stolenClothStudents: [Bool] = makeStolenClothStudents(studentCount: n, lostNumber: lost)
    let lendReserveClothes: [Bool] = lendReserveCloth(stolenClothStudents, reserve)
    return lendReserveClothes.reduce(0, { (result: Int, element: Bool) -> Int in
        return result + (element == true ? 1 : 0)
    })
}

func makeStolenClothStudents(studentCount: Int, lostNumber: [Int]) -> [Bool] {
    let beforeStolenCloth = Array(repeating: true, count: studentCount)
    var afterStolenCloth = beforeStolenCloth
    for (index, item) in beforeStolenCloth.enumerated() {
        for i in lostNumber {
            if index+1 == i { afterStolenCloth[index] = false }
        }
    }
    return afterStolenCloth
}
func lendReserveCloth(_ stolenClothStudents: [Bool], _ reserve: [Int]) -> [Bool] {
    var result: [Bool] = stolenClothStudents
    for item in reserve {
        for (index, check) in stolenClothStudents.enumerated() {
            if check == false {
                if index == item-1 {
                    result[index] = true
                    break
                } else if index-1 == item-1 || index+1 == item-1 {
                    result[index] = true
                    break
                }
            }
        }
    }
    return result
}

