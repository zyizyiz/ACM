/*
 * @lc app=leetcode.cn id=118 lang=swift
 *
 * [118] 杨辉三角
 */

// @lc code=start
class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 0 { return [] }
        var res : [[Int]] = [[1]]
        for index in 1..<numRows {
            let lastRow = res[index - 1]
            var currentRow = [1]
            
            if index > 1 {
                for subIndex in 1..<lastRow.count {
                    currentRow.append(lastRow[subIndex - 1] + lastRow[subIndex])
                }
            }
            currentRow.append(1)
            res.append(currentRow)
        }
        return res
    }
}
// @lc code=end

