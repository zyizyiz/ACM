//
//  oneSum.swift
//  Leetcode
//
//  Created by 张义镇 on 2018/9/18.
//  Copyright © 2018年 一个橙子. All rights reserved.
//

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

