/*
 * @lc app=leetcode.cn id=168 lang=swift
 *
 * [168] Excel表列名称
 */

// @lc code=start
class Solution {
    func convertToTitle(_ n: Int) -> String {
      var str = ""
      var n = n
            
      while n != 0 {
        let k = (n-1)%26
        str.append(Character(UnicodeScalar(65+k)!))
        n = (n-k)/26
      }
    
      return String(str.reversed())
    }
}
// @lc code=end

