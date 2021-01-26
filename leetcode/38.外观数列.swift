/*
 * @lc app=leetcode.cn id=38 lang=swift
 *
 * [38] 外观数列
 */

// @lc code=start
class Solution {
    func countAndSay(_ n: Int) -> String {
        var result : [Character] = ["1"]
        for i in 1..<n {
            var tempRes : [Character] = []
            var tempTuple : (Character, Int) = (result[0],0)
            for j in result {
                if tempTuple.0 == j {
                    tempTuple.1 = tempTuple.1 + 1
                }else {
                    tempRes.append(Character("\(tempTuple.1)"))
                    tempRes.append(tempTuple.0)
                    tempTuple.0 = j
                    tempTuple.1 = 1
                }
            }
            tempRes.append(Character("\(tempTuple.1)"))
            tempRes.append(tempTuple.0)
            result = tempRes
        }
        return String.init(result)
    }
}
// @lc code=end

