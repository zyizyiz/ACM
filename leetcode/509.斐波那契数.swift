/*
 * @lc app=leetcode.cn id=509 lang=swift
 *
 * [509] 斐波那契数
 */

// @lc code=start
class Solution {
    func fib(_ n: Int) -> Int {
        if n <= 1 {
            return n
        }
        return fib(n - 1) + fib(n - 2)   
    }
}
// @lc code=end

