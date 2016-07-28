func collatz (x: Int) -> Int {
    var y = x
    var chain = 0
    while y != 1 {
        if y % 2 == 0 {
            y /= 2
            chain += 1
        } else {
            y = 3 * y + 1
            chain += 1
        }
    }
    return chain
}

var maxChain = 0
for i in 1..<1000000 {
    var k = collatz(i)
    if k > maxChain {
        maxChain = k
    }
}

print(maxChain)