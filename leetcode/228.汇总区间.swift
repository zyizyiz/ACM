/*
 * @lc app=leetcode.cn id=228 lang=swift
 *
 * [228] 汇总区间
 */

// @lc code=start
class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        if nums.count <= 0 { return []}
        var res = [String]()
        var begin = nums[0]
        var end = nums[0]
        for num in nums {
            if num - end <= 1 {
                end = num
            }else {
                if begin != end {
                    res.append("\(begin)->\(end)")
                }else {
                    res.append("\(begin)")
                }
                begin = num
                end = num
            }
        }
        if begin != end {
            res.append("\(begin)->\(end)")
        }else {
            res.append("\(begin)")
        }
        return res
    }
}
// @lc code=end

