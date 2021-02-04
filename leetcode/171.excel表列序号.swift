/*
 * @lc app=leetcode.cn id=171 lang=swift
 *
 * [171] Excel表列序号
 */

// @lc code=start
class Solution {
    func titleToNumber(_ s: String) -> Int {
        var result = 0
        for c in s {
            let num = (Int(c.asciiValue!) - 64)
            result = result * 26 + num
        }
        return result
    }
}
// @lc code=end

