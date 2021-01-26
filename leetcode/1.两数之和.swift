/*
 * @lc app=leetcode.cn id=1 lang=swift
 *
 * [1] 两数之和
 */

// @lc code=start
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var resultArr : [Int] = []
        for firstIndex in 0..<nums.count {
            let result = target - nums[firstIndex]
            let lastFirstIndex = firstIndex + 1
            for secondIndex in lastFirstIndex..<nums.count {
                if result == nums[secondIndex] {
                    resultArr = [firstIndex, secondIndex]
                    return resultArr
                }
            }
        }
        return []
    }
}
// @lc code=end

