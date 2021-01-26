/*
 * @lc app=leetcode.cn id=70 lang=swift
 *
 * [70] 爬楼梯
 */

// @lc code=start
class Solution {

    var cache = [Int: Int]() 
    func climbStairs(_ n: Int) -> Int {
        if n <= 2 {
            return n
        }
        var result = 0
        if cache[n] != nil {
            result = cache[n] ?? 0
        }else {
            result = climbStairs(n - 1) + climbStairs(n-2)
            cache[n] = result
        }
        return result
        
    }
}
// @lc code=end

