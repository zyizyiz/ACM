/*
 * @lc app=leetcode.cn id=202 lang=swift
 *
 * [202] 快乐数
 */

// @lc code=start
class Solution {
    /// 由于会形成环，那么就可以使用快慢指针的写法
    func isHappy(_ n: Int) -> Bool {
        var loopArr : [Int] = []
        var sum = 0, n = n
        while n > 0 {
            let remainder = n % 10
            sum += remainder * remainder
            
            if n - remainder == 0 {
                
                if sum == 1 {
                    return true
                }else if loopArr.contains(sum) {
                    return false
                }else {
                    loopArr.append(sum)
                    n = sum
                    sum = 0
                }
            }else {
                n = n / 10
            }
        }

        return false

    }
}
// @lc code=end

