import Foundation

/// My Solution
func solution(_ s: String) -> Int {
    var result: Int = 0
    if s.count > 0 && s.count < 6 {
        if let r = Int(s) {
            result = r
        } else {
            print("nil!!")
        }
    } else {
        print("1이상 5이하의 문자열을 입력하시오")
    }
    return result
}
/// Other Solution_1
func solution(_ s:String) -> Int {
    return Int(s)!
}
/// Other Solution_2
func solution(_ s:String) -> Int {
    var result = 0
    var range = s.startIndex..<s.endIndex
    let isUnsignedInt = s[s.startIndex] == "-"
    
    if isUnsignedInt == true {
        range = s.index(after: s.startIndex)..<s.endIndex
    }
    
    result = Int(s[range])!
    
    return s[s.startIndex] == "-" ? -result : result
}
/// Other Solution_3
import Foundation
func solution(_ s:String) -> Int {
    if( s.hasPrefix("-")){
        print(Int( s)!)
    }else if( s.hasPrefix("+")){
        print("+상태 : \(s)")
    }else{
        print(Int(s)!)
    }
    
    return Int( s)!
}

