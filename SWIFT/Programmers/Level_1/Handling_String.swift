import Foundation

/// My Solution
func solution(_ s:String) -> Bool {
    if s.count == 4 || s.count == 6 {
        guard let result = Int(s) else {
            return false
        }
        return true
    } else {
        return false
    }
}
/// Other Solution_1(Best)
func solution(_ s:String) -> Bool {
    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
}
/// Other Solution_2
func solution(_ s:String) -> Bool {
	switch s.count {
    case 4, 6:
        break
    default:
        return false
    }
    for ch in s {
        switch ch {
        case "0"..."9":
            continue
        default:
            return false
        }
    }
    return true
}
/// Other Solution_3
func solution(_ s:String) -> Bool {
    guard s.count == 4 || s.count == 6 else { return false }
    let numberList:[Character] = ["0","1","2","3","4","5","6","7","8","9"]
    return s.map{numberList.contains($0)}.reduce(true, {$0&&$1})
}
/// Other Solution_4
func solution(_ s:String) -> Bool {
	let arr = Array(s).flatMap { str in Int(s) }
	if (arr.cout == 4 || arr.count == 6) && arr.count == s.count {
		return true
	}
	return false
}
