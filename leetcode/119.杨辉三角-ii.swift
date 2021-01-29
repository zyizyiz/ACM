/*
 * @lc app=leetcode.cn id=119 lang=swift
 *
 * [119] 杨辉三角 II
 */

// @lc code=start
class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        
        var res = [1]
        for index in 1..<rowIndex + 1 {
            var temp = [1]
            for subIndex in 1..<res.count {
                let item = res[subIndex - 1] + res[subIndex]
                temp.append(item)
            }
            temp.append(1)
            res = temp
        }
        return res
    }
}
// @lc code=end

