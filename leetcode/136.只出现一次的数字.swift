/*
 * @lc app=leetcode.cn id=136 lang=swift
 *
 * [136] 只出现一次的数字
 */

// @lc code=start
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        return nums.reduce(0) { $0 ^ $1 }
    }

    func singleNumber1(_ nums: [Int]) -> Int {
        var res = 0
        for num in nums {
            res ^= num
        }
        return res
    }
}
// @lc code=end

