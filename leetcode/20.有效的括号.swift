/*
 * @lc app=leetcode.cn id=20 lang=swift
 *
 * [20] 有效的括号
 */

// @lc code=start
class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [String]()
        for cChar in s {
            let c = String(cChar)
            if stack.count == 0 {
                stack.append(c)
            }else {
                let last = stack[stack.count - 1]
                if last == "(" && c == ")" {
                    stack.popLast()
                }else if last == "{" && c == "}" {
                    stack.popLast()
                }else if last == "[" && c == "]" {
                    stack.popLast()
                }else {
                    stack.append(c)
                }
            }
        }
        return stack.count == 0
    }
}
// @lc code=end

