/*
 * @lc app=leetcode.cn id=125 lang=swift
 *
 * [125] 验证回文串
 */

// @lc code=start
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        guard s.count > 0 else {
            return true
        }
        let charters = Array(s.uppercased())
        var start = 0
        var last = s.count - 1
        while start < last {
            let startLetter = charters[start]
            guard startLetter.isLetter || startLetter.isNumber else {
                start += 1
                continue
            }
            let endLetter = charters[last]
            guard endLetter.isLetter || endLetter.isNumber else {
                last -= 1
                continue
            }
            if startLetter != endLetter {
                return false
            }
            start += 1
            last -= 1
        }
        return true
    }
}
// @lc code=end

