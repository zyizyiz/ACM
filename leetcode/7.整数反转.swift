/*
 * @lc app=leetcode.cn id=7 lang=swift
 *
 * [7] 整数反转
 */

// @lc code=start
class Solution {
    func reverse(_ x: Int) -> Int {
        var isNegative = false
        var tempX = x
        if (x < 0) {
            isNegative = true
            tempX = -x
        }
        var xStr = "\(tempX)"
        xStr = String(xStr.reversed())
        var result = Int(Int32(xStr) ?? 0) ?? 0
        if (isNegative) {
            result = -result
        }
        return result
    }
}
// @lc code=end

