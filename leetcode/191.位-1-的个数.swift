/*
 * @lc app=leetcode.cn id=191 lang=swift
 *
 * [191] 位1的个数
 */

// @lc code=start
class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var length = 32
        var res = 0
        for index in 0..<length {
            if  n & (1 << index) == (1 << index) {
                res += 1
            }
        }
        return res
    }
}
// @lc code=end

