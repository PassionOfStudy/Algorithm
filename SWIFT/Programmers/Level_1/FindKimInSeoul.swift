import Foundation

/// My Solution
func solution(_ seoul:[String]) -> String {
    var index: Int = 0
    if let num = seoul.index(of: "Kim") {
        index = num
    }
    return "김서방은 " + String(index) + "에 있다"
}
/// Other Solution_1(Best)
func solution(_ seoul:[String]) -> String {
    return "김서방은 " + seoul.index(of: "Kim")!.description + "에 있다";
}
/// Other Solution_2
func solution(_ seoul:[String]) -> String {
    
    for search in 0..<seoul.count
    {
        let index = seoul.index(seoul.startIndex, offsetBy:search)
        if(seoul[index] == "Kim")
        {
            return "김서방은 " + String(search) + "에 있다"
        }
    }
    return ""
}
/// Other Solution_3
func solution(_ seoul:[String]) -> String {
    return "김서방은 \(seoul.indices.filter { seoul[$0] == "Kim" }.first!)에 있다"
}

