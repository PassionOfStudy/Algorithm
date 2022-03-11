import Foundation

/// My Solution
func solution(_ n:Int) -> String {
    var result: String = ""
    for i in 1...n {
        if i % 2 == 0 {
            result += "박"
        } else {
            result += "수"
        }
    }
    return result
}
/// Other Solution_1(Best)
func solution(_ n:Int) -> String {
    var ans = String(repeating: "수박", count: (Int)(n/2))
    return ans + ((n%2==1) ? "수" : "")
}
/// Other Solution_2
struct SB: Sequence, IteratorProtocol {
    var c = 0
    mutating func next() -> String? {
        c = (c + 1) % 2
        return c == 1 ? "수" : "박"
    }
}

func solution(_ n:Int) -> String {
    return SB().lazy.prefix(n).joined(separator:"")
}
/// Other Solution_3
func solution(_ n:Int) -> String {
    var stringArray = Array(repeating: "수박", count: n/2);

    if (n % 2 != 0) { stringArray.append("수") }

    return stringArray.joined()
}
/// Other Solution_4
func solution(_ n:Int) -> String {
    var str = ""
    for i in 0..<n {
        str.append(i%2 == 0 ? "수" : "박")
    }
    return str
}
