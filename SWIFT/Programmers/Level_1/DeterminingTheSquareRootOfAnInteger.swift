import Foundation

/// My Solution
func solution(_ n:Int64) -> Int64 {
    let sqrtNum = sqrt(Double(n))
    let integerPartOfSqrtNum = Double(Int(sqrtNum))
    return sqrtNum - integerPartOfSqrtNum == 0 ? (Int64(sqrtNum)+1)*(Int64(sqrtNum)+1) : -1
}

/// Other Solution_1
func solution(_ n:Int64) -> Int64 {
    let doubleValue: Double = Double(n).squareRoot()
    var intValue: Int = Int(doubleValue)
    if (Double(intValue) == doubleValue) {
        intValue += 1
        return Int64(intValue*intValue)
    } else {
        return -1
    }
}
/// Other Solution_2
func solution(_ n:Int64) -> Int64 {
    let temp = String(sqrt(Double(n))).split(separator: ".").last
    if temp == "0" {
        let num = Int(sqrt(Double(n)))+1
        return Int64(num*num)
    } else { return -1 }
}
/// Other Solution_3
func solution(_ n:Int64) -> Int64 {
    let rootValue = sqrt(Double(n));
    if( rootValue - floor(rootValue) != 0){return -1;}
    return Int64((rootValue+1)*(rootValue+1));
}
/// Other Solution_4
func solution(_ n:Int64) -> Int64 {

    let sqaure = sqrt(Double(n))

    if sqaure.truncatingRemainder(dividingBy: 1) == 0 {
        return Int64(pow(sqaure+1,2))
    }

    return -1
}
/// Other Solution_5
func solution(_ n:Int64) -> Int64 {
    let a = Double(n).squareRoot()
    if a.rounded() - a == 0 {
        return Int64((a+1)*(a+1))
    }
    return -1
}
