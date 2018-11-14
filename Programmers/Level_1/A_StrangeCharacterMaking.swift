import Foundation

/// My Solution
func solution(_ s:String) -> String {
    var ans: String = ""
    var convertStrArr = convertArr(s)
    let blankArr = makeBlankArr(s)
    print(blankArr)
    var count: Int = 0
    for item in convertStrArr {
        // 빈 공백이 처음에 나왔을 경우를 분리해준다.
        if blankArr.count > convertStrArr.count {
            ans = ans + String(repeating: " ", count: blankArr[count]) + item
            count += 1
        } else {
            ans = ans + item + String(repeating: " ", count: blankArr[count])
            count += 1
        }
    }
    return ans
}
// 단어들을 요구사항에 맞게 변환하고 String배열에 저장
func convertArr(_ s: String) -> [String] {
    let splitBySpace = s.split(separator: " ").map { String($0) }
    var resultArr: [String] = []
    var resultStr: String = ""
    var innerCount = 1

    for item in splitBySpace {
        for ch in item {
            if innerCount % 2 == 0 {
                resultStr += String(ch).lowercased()
            } else {
                resultStr += String(ch).uppercased()
            }
            innerCount += 1
        }
        innerCount = 1
        resultArr.append(resultStr)
        resultStr = ""
    }
    return resultArr
}
// 단어와 단어를 구분하는 공백을 보존하기 위해서 공백을 Int형 배열로 추상화
func makeBlankArr(_ s: String) -> [Int] {
    let strLength = s.count
    var count = 0
    var blankCountArr: [Int] = []
    var blankCount: Int = 0
    for ch in s {
        count += 1
        if ch == " " {
            blankCount += 1
            if count == strLength { blankCountArr.append(blankCount) }
        } else {
            if blankCount != 0 { blankCountArr.append(blankCount) }
            blankCount = 0
        }
    }
    if blankCountArr.count < s.split(separator: " ").count {
        blankCountArr.append(blankCount)
        return blankCountArr
    } else {
        return blankCountArr
    }
}
