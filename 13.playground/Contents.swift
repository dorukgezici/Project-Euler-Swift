import Foundation

let path = Bundle.main.pathForResource("data", ofType: "txt")!
do {
    let data = try String(contentsOfFile: path, encoding: String.Encoding.utf8)
    var nums = [UIntMax]()
    for numberStr in data.components(separatedBy: "\n") {
        let range = Range<Index>
        let num1 = numberStr.substring(with: Range)
    }
} catch { print(error) }
