/*
 * @lc app=leetcode.cn id=258 lang=swift
 *
 * [258] 各位相加
 */

// @lc code=start
class Solution {
    func addDigits(_ num: Int) -> Int {
        return (num - 1) % 9 + 1;
    }
}
// @lc code=end

