//
//  fourteenPrefix.swift
//  Leetcode
//
//  Created by 张义镇 on 2018/9/26.
//  Copyright © 2018 一个橙子. All rights reserved.
//

import Cocoa
/*
 编写一个函数来查找字符串数组中的最长公共前缀。
 
 如果不存在公共前缀，返回空字符串 ""。
 
 示例 1:
 
 输入: ["flower","flow","flight"]
 输出: "fl"
 示例 2:
 
 输入: ["dog","racecar","car"]
 输出: ""
 解释: 输入不存在公共前缀。
 说明:
 
 所有输入只包含小写字母 a-z 。
 */
class fourteenPrefix: NSObject {
    class func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count != 0 else {
            return ""
        }
        var prefix = ""
        
        if strs.count == 1 {
            return strs.first ?? "0"
        }
        
        for index in 1..<strs.count {
            let temp = recursion(s1: strs[index], s2: strs[index - 1])
            if index == 1 {
                prefix = temp
            }else if prefix.count > temp.count {
                prefix = temp
            }
        }
        return prefix
    }
    
    class func recursion( s1 : String , s2 : String) -> String {
        guard !(s1.isEmpty || s2.isEmpty) else {
            return ""
        }
        var s11 = s1
        var s22 = s2
        var prefix = ""
        while !(s11.isEmpty || s22.isEmpty) {
            if s11.first == s22.first {
                prefix.append(s11.first ?? "0")
                s11.remove(at: s11.startIndex)
                s22.remove(at: s22.startIndex)
            }else {
                break
            }
        }
        return prefix
        
    }
}
