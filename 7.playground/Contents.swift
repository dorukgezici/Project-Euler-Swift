import Foundation

func isPrime(number: Int) -> Bool {
    if number == 2 || number == 3 || number == 5 || number == 7 { return true }
    if number % 2 == 0 || number % 3 == 0 || number % 5 == 0 || number % 7 == 0 { return false }
    var cnt = 0
    for i in 1...Int(round(pow(Float(number), 0.5))) {
        if number % i == 0 {
            cnt += 1
        }
    }
    return cnt == 1
}

var count = 0
var x = 2
while true {
    if isPrime(x) {
        count += 1
        if count == 10001 {
            print(x)
            break
        }
    }
    x += 1
}