/*
 * @lc app=leetcode.cn id=28 lang=swift
 *
 * [28] 实现 strStr()
 */

// @lc code=start
class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        
        if needle.count <= 0 {
            return 0
        }
        if haystack.count < needle.count { return -1 }
        
        if haystack.count == needle.count {
            if haystack.prefix(1) != needle.prefix(1) || haystack.suffix(1) != needle.suffix(1) {
                return -1
            }
        }
        
        /// 循环haystack,判断第一个字母是否相等，相等的话直接用prefix进行剩余的判断
        for i in 0..<haystack.count {
            var sameCount = 0
            for j in 0..<needle.count {
                if (i + j) >= haystack.count { return -1} 
                if haystack[haystack.index(haystack.startIndex, offsetBy:(i + j))] == needle[needle.index(needle.startIndex, offsetBy:j)] {
                    sameCount = sameCount + 1
                }else {
                    break
                }
            }
            if sameCount == needle.count { return i }
        }
        return -1
    }
}
// @lc code=end

