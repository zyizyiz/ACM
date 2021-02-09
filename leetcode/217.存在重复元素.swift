/*
 * @lc app=leetcode.cn id=217 lang=swift
 *
 * [217] 存在重复元素
 */

// @lc code=start
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let set = Set(nums)
        return set.count != nums.count
    }
    func containsDuplicate1(_ nums: [Int]) -> Bool {
        var arr = [Int:Int]()
        for num in nums {
            if arr[num] != nil {
                return true
            }else {
                arr[num] = 1 
            }
        }
        return false
    }
}
// @lc code=end

