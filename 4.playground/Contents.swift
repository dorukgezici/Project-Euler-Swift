func isPalindrome(num: Int) -> Bool {
    let numS = String(num)
    let reversedNum = String(numS.characters.reverse())
    if numS == reversedNum {
        return true
    } else {
        return false
    }
}

var list3x3 = [Int]()
for var a=999; a>910; a-=1 {
    for var b=999; b>910; b-=1 {
        list3x3.append(a*b)
    }
}

for var i in list3x3.sort().reverse() {
    if isPalindrome(i) {
        print(i)
        break
    }
}
