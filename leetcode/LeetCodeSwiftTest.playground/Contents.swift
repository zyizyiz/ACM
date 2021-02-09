import Cocoa

// let x = 123
// let xStr = "\(x)"
// let result = xStr.reversed()
//
// let bird = "bird";
// let bear = "bear";
//
// let diff = bird.difference(from: bear)
// let newBird = bear.applying(diff)
//
// let aDate = Date.init(timeIntervalSinceNow: 60)// ...两周前
// let formatter = RelativeDateTimeFormatter()
// let dateString = formatter.localizedString(for: aDate, relativeTo: Date())

// let string = "12345"
// for char in string {
//    print(char)
// }

// var resultArr : [String] = []
// resultArr.append("x")
// resultArr.popLast()
// print(resultArr)

// if ["I","V"].contains("I") {
//    print(true)
// }else {
//    print(false)
// }

// func strStr(_ haystack: String, _ needle: String) -> Int {
//
//        if needle.count <= 0 {
//            return 0
//        }
//        for i in 0..<haystack.count {
//            var sameCount = 0
//            for j in 0..<needle.count {
//                if haystack[haystack.index(haystack.startIndex, offsetBy:(i + j))] == needle[needle.index(needle.startIndex, offsetBy:j)] {
//                    sameCount = sameCount + 1
//                }else {
//                    break
//                }
//            }
//            if sameCount == needle.count { return i }
//        }
//        return -1
//    }
//
// strStr("hello", "ll")

var str = "xensow"
for c in str {
    print(c)
}
/// 前三位
str.prefix(3)
/// 后三位
str.suffix(3)
/// 第2位字符
let char = str[str.index(str.startIndex, offsetBy: 1)]
char.isLetter

let a : Character = "a"
let a_ASCII = Int(a.asciiValue!)
let A_ASCII = UnicodeScalar("A")
let Z_ASCII = UnicodeScalar("Z")
let A_Int = Character(UnicodeScalar(A_ASCII))

str.remove(at: str.index(str.startIndex, offsetBy: 1))

str.split(separator: " ")

str = String(str.reversed())

var result: [Character] = ["1"]
let xx = String(result)

var intArr = [1, 3, 2, 1]
for item in intArr {
    print(item)
}

intArr.insert(0, at: 0)

let intSet = Set.init(intArr)

for item in stride(from: 10, to: 2, by: 1) {
    print(item)
}

for index in 0...intArr.count {
    print(index)
}

intArr.last
