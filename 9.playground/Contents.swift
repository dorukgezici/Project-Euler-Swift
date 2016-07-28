import Darwin

var a, b, c : Int
var s = 1000
var found = false

for a in 1..<s/3 {
    for b in a..<s/2 {
        c = s - a - b
        if Int(pow(Double(a),2.0)) + Int(pow(Double(b),2.0)) == Int(pow(Double(c),2.0)) {
            found = true
            print(a, b, c, separator: "\t")
            print(a * b * c)
            break
        }
    }
    if found { break }
}