//
//  twentyValid.swift
//  Leetcode
//
//  Created by 张义镇 on 2018/9/27.
//  Copyright © 2018 一个橙子. All rights reserved.
//

import Cocoa
/*
 给定一个只包括 '('，')'，'{'，'}'，'['，']' 的字符串，判断字符串是否有效。
 
 有效字符串需满足：
 
 左括号必须用相同类型的右括号闭合。
 左括号必须以正确的顺序闭合。
 注意空字符串可被认为是有效字符串。
 
 示例 1:
 
 输入: "()"
 输出: true
 示例 2:
 
 输入: "()[]{}"
 输出: true
 示例 3:
 
 输入: "(]"
 输出: false
 示例 4:
 
 输入: "([)]"
 输出: false
 示例 5:
 
 输入: "{[]}"
 输出: true
 */
class twentyValid: NSObject {
    class func isValid(_ s: String) -> Bool {
        // 栈
        if s.isEmpty {
            return true
        }
        var stack = [String]()
        for char in s {
            if char == "{" {
                stack.append("}")
            }else if char == "[" {
                stack.append("]")
            }else if char == "(" {
                stack.append(")")
            }else if stack.last == String(char) {
                stack.removeLast()
            }else if stack.last != String(char) {
                return false
            }
        }
        if stack.count == 0 {
            return true
        }
        return false
    }
}
