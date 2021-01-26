/*
 * @lc app=leetcode.cn id=9 lang=swift
 *
 * [9] 回文数
 */

// @lc code=start
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        if x == 0 {
            return true
        }
        /// 末尾为0的时候肯定不是
        if x % 10 == 0 {
            return false
        }

        var y = x
        var res : Int = 0

        while res < y {
            res = res * 10 + y % 10
            y = y / 10
        }
        
        return y == res || y == res / 10
    }

    /// 不转化成字符串
    func isPalindrome_Int(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        if x == 0 {
            return true
        }

        var y = x
        var res : Int = 0

        while y > 0 {
            res = res * 10 + y % 10
            y = y / 10
        }
        return x == res
    }

    /// 转化成字符串
    func isPalindrome_String(_ x: Int) -> Bool {
        var original = String(x)
        var new : String! = ""
        for c in original {
            new = String(c) + new
        }
 
        if  new == original {
            return true
        }else {
            return false
        }
    }
}
// @lc code=end

