import Foundation

var sum = 0

func isPrime(number: Int) -> Bool {
    if number == 2 || number == 3 || number == 5 || number == 7 { return true }
    if number % 2 == 0 || number % 3 == 0 || number % 5 == 0 || number % 7 == 0 { return false }
    var cnt = 0
    for i in 1...Int(round(pow(Float(number), 0.5))) {
        if number % i == 0 {
            cnt += 1
        } else if cnt > 1 {
            return false
        }
    }
    return cnt == 1
}

for i in 1...2000000 {
    if isPrime(i) {
        sum += i
    }
}

print(sum)