/*
 * @lc app=leetcode.cn id=122 lang=swift
 *
 * [122] 买卖股票的最佳时机 II
 */

// @lc code=start
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var res = 0
        var subRes = 0
        var minPrice = Int.max
        for price in prices {
            minPrice = min(price, minPrice)
            let subPrice = price - minPrice
            if subPrice < subRes {
                res += subRes
                minPrice = price
                subRes = 0
            }else {
                subRes = subPrice
            }
        }
        res += subRes
        return res
    }
}
// @lc code=end

