/*
 * @lc app=leetcode.cn id=172 lang=swift
 *
 * [172] 阶乘后的零
 */

// @lc code=start
class Solution {
    func trailingZeroes(_ n: Int) -> Int {
        var res = 0,n = n
        while n > 0 { 
            n /= 5
            res += n
        }
        return res
    }
}
// @lc code=end

