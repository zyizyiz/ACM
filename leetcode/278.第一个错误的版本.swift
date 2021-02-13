/*
 * @lc app=leetcode.cn id=278 lang=swift
 *
 * [278] 第一个错误的版本
 */

// @lc code=start
/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 0, right = n
        var res = 0;
        while left <= right {
            let mid = (right - left) >> 1 + left
            if isBadVersion(mid) {
                res = mid
                right = mid - 1
            }else {
                left = mid + 1
            }
        }
        return res
    }
}
// @lc code=end

