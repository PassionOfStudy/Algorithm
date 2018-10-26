import Foundation

/// My Solution
func solution(_ s:String) -> String {
    if s.count >= 1 {
        return s.sorted(by: >).map{ String($0) ?? String($0) }.joined()
    }
    return ""
}
/// Other Solution_1(Best)
func solution(_ s:String) -> String {
    return String(s.sorted { $0 > $1 })
}
/// Other Solution_2
func solution(_ s:String) -> String {
    var result:[Character] = []
    var returnString = ""
    for i in s {
        result.append(i)
    }
    result.sort(by:>)
    for i in result {
        returnString += String(i)
    }
    return returnString
}
/// Other Solution_3
func solution(_ s:String) -> String {
        var str = s

    var ans = ""
    for ch in str.sorted().reversed() {
        ans.append(ch)
    }

    return ans
}
/// Other Solution_4
func solution(_ s:String) -> String {
    var strResult:String = ""
        var arrStr:Array<Character> = Array()


        for i in 0..<s.count {
            arrStr.append(s[s.index(s.startIndex, offsetBy: i)])
        }

        print(arrStr)
        arrStr.sort()
        print(arrStr)
        arrStr.reverse()
        print(arrStr)

        for i in 0..<arrStr.count {
            strResult.append(arrStr[i])
        }

        print(strResult)
    return strResult
}
/// Other Solution_5
func solution(_ s:String) -> String {
    let result = s.sorted { (a, b) -> Bool in
        return a > b
    }
    return String(result)
}
