import Foundation

var a: UInt64 = 20
var b: UInt64 = 20

func latticeComb(_a: UInt64, _b: UInt64) -> UInt64 {
    var a = _a
    var b = _b
    var c = a + b
    var d: UInt64 = 1
    while a > 0 {
        d *= c
        c -= 1
        a -= 1
    }
    a = _a
    var e: UInt64 = 1
    while a > 0 {
        e *= a
        b -= 1
    }
    return (d/e)
}

print(latticeComb(20, _b: 20))
