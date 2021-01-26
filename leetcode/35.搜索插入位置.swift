/*
 * @lc app=leetcode.cn id=35 lang=swift
 *
 * [35] 搜索插入位置
 */

// @lc code=start
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        let n = nums.count
        var left = 0, right = n - 1, ans = n;
        while left <= right {
            let mid = (right - left) >> 1 + left;
            if target <= nums[mid] {
                ans = mid;
                right = mid - 1;
            }else {
                left = mid + 1
            }
            
        }
        return ans;
    }

    func searchInsert1(_ nums: [Int], _ target: Int) -> Int {
        for index in 0..<nums.count {
            if target <= nums[index] {
                return index
            }
        } 
        return nums.count
    }
}
// @lc code=end

