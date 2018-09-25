//
//  nineString.swift
//  Leetcode
//
//  Created by 张义镇 on 2018/9/25.
//  Copyright © 2018年 一个橙子. All rights reserved.
//

import Cocoa

/*
 
 判断一个整数是否是回文数。回文数是指正序（从左向右）和倒序（从右向左）读都是一样的整数。
 
 示例 1:
 
 输入: 121
 输出: true
 示例 2:
 
 输入: -121
 输出: false
 解释: 从左向右读, 为 -121 。 从右向左读, 为 121- 。因此它不是一个回文数。
 示例 3:
 
 输入: 10
 输出: false
 解释: 从右向左读, 为 01 。因此它不是一个回文数。
 
 进阶:
 
 //MARK: 你能不将整数转为字符串来解决这个问题吗？
 */
class nineString: NSObject {
    
    class func isPalindrome(_ x: Int) -> Bool {
        var str = ""
        for s in String(x).reversed() {
            str.append(s)
        }
        if String(x) == str {
            return true
        }else {
            return false
        }
    }
}
