//
//  oneSum.swift
//  Leetcode
//
//  Created by 张义镇 on 2018/9/18.
//  Copyright © 2018年 一个橙子. All rights reserved.
//

/*
 给定一个整数数组和一个目标值，找出数组中和为目标值的两个数。
 
 你可以假设每个输入只对应一种答案，且同样的元素不能被重复利用。
 
 示例:
 
 给定 nums = [2, 7, 11, 15], target = 9
 
 因为 nums[0] + nums[1] = 2 + 7 = 9
 所以返回 [0, 1]
 */

import Cocoa

class oneSum: NSObject {
    class func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var temps : [String:Int] = [:]
        for (index,num) in nums.enumerated() {
            let temp = temps.filter { (key,value) -> Bool in
                return value == target - num
            }
            if temp.count != 0 {
                return [index,Int((temp.first?.key)!)!]
            }else {
                temps["\(index)"] = num
            }
        }
        return [0]
    }
}

