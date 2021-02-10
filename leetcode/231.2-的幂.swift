/*
 * @lc app=leetcode.cn id=231 lang=swift
 *
 * [231] 2的幂
 */

// @lc code=start
class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        return n > 0 && n & (n-1) == 0
    }
    // func isPowerOfTwo(_ n: Int) -> Bool {
    //     if n <= 0 {
    //         return false
    //     }else if n <= 2 {
    //         return true
    //     }
    //     var target = 2
    //     while true {
    //         target = target * 2
    //         if target == n {
    //             return true
    //         }else if target > n {
    //             return false
    //         }
    //     }
    //     return false
    // }
}
// @lc code=end

