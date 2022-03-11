import Foundation

/// My Solution
func solution(_ a:Int, _ b:Int) -> String {
    var sumDay: Int = 0
    var wholeDay: Int = 0
    var index: Int = 0
    var weekDay = ["FRI","SAT","SUN","MON","TUE","WED","THU"]
    var monthWholeDay: [Int: Int] = [0:0, 1:31, 2:29, 3:31, 4:30, 5:31, 6:30, 7:31, 8:31, 9:30, 10:31, 11:30, 12:31]
    for index in 1...a {
        sumDay += monthWholeDay[index-1]!
    }
    wholeDay = sumDay + b
    index = wholeDay % 7 - 1 == -1 ? 6: wholeDay % 7 - 1
    return weekDay[index]
}
/// Other Solution_1(Best)
func solution(_ a:Int, _ b:Int) -> String {

    let w = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    let monthDay = [ 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let totalDay = monthDay[0..<a-1].reduce(0, +) + b

    return w[totalDay % 7]
}
/// Other Solution_2
enum Week : Int {

    case SUN = 1
    case MON = 2
    case TUE = 3
    case WED = 4
    case THU = 5
    case FRI = 6
    case SAT = 7
}

func solution(_ a:Int, _ b:Int) -> String {

    let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd"
        let zero = "0"
        var month = ""
        var day = ""
        var result : Week?

        if ( "\(a)".count == 1 ) {
            month = "\(zero)\(a)"
        } else if ( "\(a)".count == 2){
            month = "\(a)"
        } else {
            return "wrong month"
        }
        if ( "\(b)".count == 1) {
            day = "\(zero)\(b)"
        }else if ("\(b)".count ==  2 ){
            day = "\(b)"
        }else {
            return "wrong day"
        }

        if let indate = df.date(from: "2016-\(month)-\(day)") {

            let calendar = Calendar.current
            let day = calendar.dateComponents([.weekday], from: indate)

            result = Week(rawValue: day.weekday!)


        }else {

            return "no date"
        }

        return "\(result!)"
}
/// Other Solution_3
func solution(_ a:Int, _ b:Int) -> String {
    let dateFormatterGet = DateFormatter()
    dateFormatterGet.dateFormat = "yyyy-MM-dd"
    let date = dateFormatterGet.date(from:"2016-\(a)-\(b)")
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat  = "EE"//"EE" to get short style
    return dateFormatter.string(from:date!).uppercased()
}

