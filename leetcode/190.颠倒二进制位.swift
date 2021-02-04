/*
 * @lc app=leetcode.cn id=190 lang=swift
 *
 * [190] 颠倒二进制位
 */

// @lc code=start
class Solution {
    func reverseBits(_ n: Int) -> Int {
        var num = n
        var res = 0
        var pow = 31
        while num != 0 {
            let bit = num&1
            res += bit << pow
            
            num = num >> 1
            pow -= 1
        }
        return res
    }
}
// @lc code=end

