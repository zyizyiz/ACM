/*
 * @lc app=leetcode.cn id=66 lang=swift
 *
 * [66] 加一
 */

// @lc code=start
class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var res : [Int] = [];
        var isCarry = false;
        for i in (0..<digits.count).reversed() {
            var temp = digits[i]
            
            if i == digits.count - 1 {
                temp += 1
            }else if isCarry {
                temp += 1
            }

            if temp >= 10 {
                isCarry = true
                temp = temp % 10
            }else {
                isCarry = false
            }
            res.insert(temp, at:0)
        }
        
        if isCarry {
            res.insert(1, at:0)
        }
        
        return res
    }
}
// @lc code=end

