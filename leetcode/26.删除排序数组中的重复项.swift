/*
 * @lc app=leetcode.cn id=26 lang=swift
 *
 * [26] 删除排序数组中的重复项
 */

// @lc code=start
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var index = 0
        while index < nums.count - 1 {
            if nums[index] == nums[index + 1] {
                nums.remove(at:index)
            }else {
                index += 1
            }
        }
        return nums.count
    }
}
// @lc code=end

