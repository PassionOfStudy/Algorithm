import Foundation

/// My Solution
func solution(_ s:String, _ n:Int) -> String {
    let largeCharacterSet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let smallCharacterSet = largeCharacterSet.lowercased()
    var largeCharacterArr: [String] = []
    var smallCharacterArr: [String] = []
    for ch in largeCharacterSet {
        largeCharacterArr.append(String(ch))
    }
    for ch in smallCharacterSet {
        smallCharacterArr.append(String(ch))
    }
    var result: String = ""
    var separateOneUnit: [String] = []
    var count: Int = 1
    var position: Int = 0
    for ch in s {
        separateOneUnit.append(String(ch))
    }
    for ch in separateOneUnit {
        if largeCharacterArr.contains(String(ch)) {
            for str in largeCharacterArr {
                if String(ch) == String(str) {
                    break
                }
                count += 1
            }
            position = (count + n) % 26
            result += largeCharacterArr[position-1]
            count = 1
        } else if smallCharacterArr.contains(String(ch)) {
            for str in smallCharacterArr {
                if String(ch) == String(str) {
                    break
                }
                count += 1
            }
            position = (count + n) % 26
            result += smallCharacterArr[position-1]
            count = 1
        } else if String(ch) == " " {
            result += " "
        }
    }
    return result
}
