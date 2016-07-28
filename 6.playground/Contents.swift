import Foundation

var numbers = Array(0...100)
var sum = Int()
var squares = Int()

for number in numbers {
    sum += number
    squares += Int(pow(Double(number),2.0))
}

sum = Int(pow(Double(sum),2.0))
let result = sum - squares
print(result)