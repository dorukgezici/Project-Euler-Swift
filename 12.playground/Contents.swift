import Foundation

func divisorCnt (x: Int) -> Int {
    var cnt = 0
    for i in 1...Int(sqrt(Double(x))) {
        if x % i == 0 {
            cnt += 2
        }
        if Int(sqrt(Double(x))) * Int(sqrt(Double(x))) == x {
            cnt -= 1
        }
    }
    return cnt
}

func triangular(x: Int) -> Int {
    var num = 0
    for i in 1...x {
        num += i
    }
    return num
}

var k = 12375
while divisorCnt(triangular(k)) < 500 {
    k += 1
    print("\(k). number is \(triangular(k)) and divisor count is \(divisorCnt(k)).")
}
print("Found \(triangular(k))")
