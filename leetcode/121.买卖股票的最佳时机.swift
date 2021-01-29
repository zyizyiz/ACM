/*
 * @lc app=leetcode.cn id=121 lang=swift
 *
 * [121] 买卖股票的最佳时机
 */

// @lc code=start
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var res = 0
        for price in prices {
            minPrice = min(minPrice, price)
            res = max(price - minPrice, res)
        }
        return res
    }
}
// @lc code=end

