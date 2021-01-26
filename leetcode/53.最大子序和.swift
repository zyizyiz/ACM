/*
 * @lc app=leetcode.cn id=53 lang=swift
 *
 * [53] 最大子序和
 */

// @lc code=start
class Solution {

    /// 分治思想
    func maxSubArray(_ nums: [Int]) -> Int {
        
        if nums.count == 0 {
            return 0
        }
        return devide(nums, 0, nums.count - 1)        
    }

    func devide(_ nums: [Int], _ left: Int, _ right: Int) -> Int {
        if left == right {
            return nums[left]
        }

        let mid = (right - left) >> 1 + left

        let sumLeft = devide(nums, left, mid)
        let sumRight = devide(nums, mid + 1, right)

        var preSum = nums[mid]
        var sumMid = nums[mid]

        for i in (left..<mid).reversed() {
            preSum += nums[i]
            sumMid = max(sumMid, preSum)
        }
        preSum = sumMid

        for i in mid+1...right {
            preSum += nums[i]
            sumMid = max(sumMid, preSum)
        }
        return max(max(sumLeft, sumRight),sumMid)


    }

    /// 动态规划
    func maxSubArray_dynamic(_ nums: [Int]) -> Int {
        if nums.count == 0 { return 0 }
        var pre : Int = 0
        var maxAnt : Int = nums[0]
        for item in nums {
            let temp = pre + item
            pre = max(temp, item)
            maxAnt = max(maxAnt, pre)
        }
        return maxAnt
    }
}
// @lc code=end

