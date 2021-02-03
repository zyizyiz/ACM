/*
 * @lc app=leetcode.cn id=167 lang=swift
 *
 * [167] 两数之和 II - 输入有序数组
 */

// @lc code=start
class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        while left < right {
            let sumNum = numbers[left] + numbers[right]
            if sumNum == target {
                return [left + 1, right + 1]
            }else if sumNum > target {
                right -= 1
            }else {
                left += 1
            }
        }
        return []
    }
    func twoSum2(_ numbers: [Int], _ target: Int) -> [Int] {
        for index in 0..<numbers.count {
            var left = index + 1
            var right = numbers.count - 1
            while left <= right {
                let mid = (right - left) >> 1 + left
                let sumNum = numbers[mid] + numbers[index]
                if sumNum == target {
                    return [index + 1, mid + 1]
                }else if sumNum > target {
                    right = mid - 1
                }else {
                    left = mid + 1
                }
                
            }
        }
        return []
    }
    func twoSum1(_ numbers: [Int], _ target: Int) -> [Int] {
        for index in 0..<numbers.count {
            let number = numbers[index]
            for subIndex in (index + 1)..<numbers.count {
                let subNumber = numbers[subIndex]
                let sumNumber = number + subNumber
                if sumNumber == target {
                    return [index + 1, subIndex + 1]
                }else if sumNumber > target {
                    break
                }
            }
        }
        return []
    }
}
// @lc code=end

