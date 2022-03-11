import Foundation

/// My Solution
func solution(_ s:String) -> String {
    var count = s.count
    var result = ""
    if count % 2 == 0 {
        var centerPositionStartIndex = s.index(s.startIndex, offsetBy: count/2-1)
        var centerPositionEndIndex = s.index(s.startIndex, offsetBy: count/2)
        result = String(s[centerPositionStartIndex...centerPositionEndIndex])
    } else {
        var centerPositionIndex = s.index(s.startIndex, offsetBy: count/2)
        result = String(s[centerPositionIndex])
    }
    return result
}
/// Other Solution_1(Best)
func solution(_ s:String) -> String {
    
    return String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)])
}
/// Other Solution_2
func solution(_ s:String) -> String {
    return findCenter(string: s)
}

func findCenter(string: String) -> String {
    let isEven = string.count % 2 == 0
    let halfValue = Int(string.count / 2) - (isEven ? 1 : 0)
    let halfIndex = String.Index(encodedOffset: halfValue)
    let lastIndex = String.Index(encodedOffset: halfValue + (isEven ? 1 : 0))
    let centerString = string[halfIndex...lastIndex]
    return centerString
}
/// Other Solution_3
func solution(_ s:String) -> String {
    let characters: [Character] = Array(s)
    
    if characters.count % 2 == 0 {
        return String(describing: characters[characters.count / 2 - 1]) +
            String(describing: characters[characters.count / 2])
    } else {
        return String(describing: characters[characters.count / 2])
    }
}
/// Other Solution_4
func solution(_ s:String) -> String {
    let length: Int = s.count % 2 == 0 ? 2 : 1
    let index: Int = s.count / 2 - (length - 1)
    
    var answer: String = s[s.index(s.startIndex, offsetBy: index)...s.index(s.startIndex, offsetBy: index + (length - 1))]
    
    return answer
}


