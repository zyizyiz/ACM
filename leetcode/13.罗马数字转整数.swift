/*
 * @lc app=leetcode.cn id=13 lang=swift
 *
 * [13] 罗马数字转整数
 */

// @lc code=start
class Solution {
    func romanToInt(_ s: String) -> Int {
        var preNum = 0
        var sumResult = 0
        for c in s {
            if preNum == 0 {
                preNum = getRomeNumber(String(c))
            }else {
                var nowNum = getRomeNumber(String(c))
                if preNum < nowNum {
                    sumResult -= preNum
                }else {
                    sumResult += preNum
                }
                preNum = nowNum
            }
        }
        sumResult += preNum
        return sumResult
    }
    /// 获取罗马字符代表的意思
    func getRomeNumber(_ str: String) -> Int {
        var num = 0
        switch str {
            case "I":
                num = 1;
                break;
            case "V":
                num = 5;
                break;
            case "X":
                num = 10;
                break;
            case "L":
                num = 50;
                break;
            case "C":
                num = 100;
                break;
            case "D":
                num = 500;
                break;
            case "M":
                num = 1000;
                break;
            default:
                num = 0;
                break;
        }
        return num;
    }
}
// @lc code=end

