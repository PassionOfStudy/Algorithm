/// My Solution
func solution(_ n:Int, _ m:Int) -> [Int] {
    var L, S, R, GCD, LCM: Int
    var result: [Int] = [Int]()
    if n > m {
        L = n
        S = m
    } else {
        L = m
        S = n
    }

    repeat {
        R = L % S
        if R != 0 {
            L = S
            S = R
        }
    } while R != 0
    
    GCD = S
    LCM = n * m / GCD
    result = [GCD, LCM]
    
    return result
}
/// Other Solution_1(Best)
func gcd(_ a: Int, _ b: Int) -> Int {
    let mod: Int = a % b
    return 0 == mod ? min(a, b) : gcd(b, mod)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    return [gcd(n, m), lcm(n, m)]
}
/// Other Solution_2
func solution(_ n:Int, _ m:Int) -> [Int] {
    var min = n < m ? n : m
    var max = n > m ? n : m
    var GCD = 0
    var LCM = 0
    
    for num in 1...min {
        if n % num == 0 && m % num == 0 {
            GCD = num
        }
    }
    
    for num in max...(n * m) {
        if num % n == 0 && num % m == 0 {
            LCM = num
            break
        }
    }
    return [GCD, LCM]
}
/// Other Solution_3
func solution(_ n:Int, _ m:Int) -> [Int] {
    var a = n
    var b = m
    var res = [Int]()
    var yaksu = [Int]()
    if a < b {
        var temp = a
        a = b
        b = temp
    }
    for i in 1...b {
        if (a % i == 0) && ( b % i == 0 ) {
            yaksu.append(i)
        }
    }
    let GCD = yaksu.max()
    var LCM = a*b/GCD!
    res.append(GCD!)
    res.append(LCM)
    return res
}

