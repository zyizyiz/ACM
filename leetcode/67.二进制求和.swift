/*
 * @lc app=leetcode.cn id=67 lang=swift
 *
 * [67] 二进制求和
 */

// @lc code=start
class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var r = "", sum = 0, carry = 0, len = max(a.count, b.count)
        /// 倒序循环
        for i in stride(from: len-1, through: 0, by: -1) {
            let aI = i + a.count - len, bI = i + b.count - len
            let aC = aI < 0 ? "0" : a[a.index(a.startIndex, offsetBy: aI)]
            let bC = bI < 0 ? "0" : b[b.index(b.startIndex, offsetBy: bI)]
            sum = aC.hexDigitValue! + bC.hexDigitValue! + carry
            carry = sum / 2
            r = String(sum%2) + r
        }
        if carry == 1 {
            r.insert("1", at: r.startIndex)
        }
        return r
    }
}
// @lc code=end

