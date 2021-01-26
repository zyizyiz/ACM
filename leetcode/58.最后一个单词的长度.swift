/*
 * @lc app=leetcode.cn id=58 lang=swift
 *
 * [58] 最后一个单词的长度
 */

// @lc code=start
class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        
        if s.count == 0 {
            return 0
        }

        let sArr = s.split(separator: " ")
        if sArr.count == 0 {
            return 0
        }
        return sArr[sArr.count - 1].count
    }
}
// @lc code=end

