/*
 * @lc app=leetcode.cn id=704 lang=swift
 *
 * [704] 二分查找
 */

// @lc code=start
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1
        while left <= right {
            let mid = (right - left) >> 1 + left
            let val = nums[mid]
            if val == target {
                return mid
            }else if val < target {
                left = mid + 1
            }else {
                right = mid - 1
            }
        }
        return -1
    }
}
// @lc code=end

