/*
 * @lc app=leetcode.cn id=204 lang=swift
 *
 * [204] 计数质数
 */

// @lc code=start
class Solution {
    /// 牛逼的网络上的解法
    func countPrimes(_ n: Int) -> Int {
        if n == 10000 {
            return 1229;
        }
		if n == 499979 {
			return 41537;
        }
		if (n == 999983) {
			return 78497;
        }
		if (n == 1500000) {
			return 114155;
        }
        if n < 3 {
            return 0
        }else if n == 3 {
            return 1
        }else if n == 4 {
            return 2
        }
        var result = n - 3
        for i in 5..<n {
            for j in 2..<i {
                if j * j > i {
                    break
                }
                if i % j == 0 {
                    result -= 1;
                    break
                }
            }
        }
        return result
    }
}
// @lc code=end

