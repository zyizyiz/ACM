/*
 * @lc app=leetcode.cn id=169 lang=swift
 *
 * [169] 多数元素
 */

// @lc code=start
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        return nums[nums.count / 2]
    }
}
// @lc code=end

