/*
 * @lc app=leetcode.cn id=69 lang=swift
 *
 * [69] x 的平方根
 */

// @lc code=start
class Solution {

    func mySqrt(_ x: Int) -> Int {
        if x == 0 { return 0}

        var left: Int = 0,
        right: Int = x,
        ans = -1;

        while left <= right {
            let middle = (right - left) >> 1 + left
            let middleTemp = middle * middle
            
            if middleTemp <= x {
                ans = middle
                left = middle + 1
            }else {
                right = middle - 1
            }
        }
        return ans

    }


    func mySqrt1(_ x: Int) -> Int {
        
        if x == 0 {
            return 0
        }

        let ans : Int = Int(exp(0.5 * log(Double(x))))
        return (ans + 1) * (ans + 1) <= x ? ans + 1 : ans 
        
    }
}
// @lc code=end

