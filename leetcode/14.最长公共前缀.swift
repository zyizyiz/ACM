/*
 * @lc app=leetcode.cn id=14 lang=swift
 *
 * [14] 最长公共前缀
 */

// @lc code=start
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var result = ""
        for index in 0..<strs.count {
            if index == 0 {
                result = strs[index]
            }else {
                let str = strs[index]
                let minLength = min(result.count, strs[index].count)
                var index = 0
                while index < minLength {
                    let strIndex = str[str.index(str.startIndex, offsetBy: index)]

                    let resIndex = result[result.index(result.startIndex, offsetBy: index)]
                    if strIndex != resIndex {   
                        break
                    }
                    index += 1
                }
                result = String(result.prefix(index))
            }
        }
        return result
    }
}
// @lc code=end

