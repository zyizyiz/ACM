/*
 * @lc app=leetcode.cn id=219 lang=swift
 *
 * [219] 存在重复元素 II
 */

// @lc code=start
class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dic = [Int:Int]()
        ///nums.enumerated() 会增加耗时
        for index in 0..<nums.count {
            let num = nums[index]
            if let dicIndex = dic[num] {
                if index - dicIndex <= k {
                    return true
                }else {
                    dic[num] = index
                }
            }else {
                dic[num] = index
            }
        }
        return false
    }
}
// @lc code=end

