/*
 * @lc app=leetcode.cn id=205 lang=swift
 *
 * [205] 同构字符串
 */

// @lc code=start
class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        let sCharArr = Array(s)
        let tCharArr = Array(t)

        var s2t :  [Character: Character] = [:]
        

        for index in 0..<sCharArr.count {
            if let char = s2t[sCharArr[index]] {
                if char != tCharArr[index] {
                    return false
                }
            }else {
                if s2t.values.contains(tCharArr[index]) {
                    return false
                }else {
                    s2t[sCharArr[index]] = tCharArr[index]
                }
            }
        }

        return true
    }
}
// @lc code=end

