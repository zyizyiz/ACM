//
//  fiveString.swift
//  Leetcode
//
//  Created by 张义镇 on 2018/9/21.
//  Copyright © 2018年 一个橙子. All rights reserved.
//

/*
 给定一个字符串 s，找到 s 中最长的回文子串。你可以假设 s 的最大长度为1000。
 
 示例 1：
 
 输入: "babad"
 输出: "bab"
 注意: "aba"也是一个有效答案。
 示例 2：
 
 输入: "cbbd"
 输出: "bb"
 */
import Cocoa

class fiveString: NSObject {

    //回文是一个正读和反读都相同的字符串，例如，“aba” 是回文，而 “abc” 不是。
    
    class func longestPalindrome(_ s: String) -> String {
        
        var resultString = ""
        var tempString = ""
        var stringTemp = ""
        for str in s {
            
            if tempString.contains(str) {
                let arr = tempString.split(separator: str)
                if tempString.last == str {
                    tempString = String.init(str)
                }else{
                    tempString = String.init(arr.last!)
                    tempString = "\(str)\(tempString)"
                }
                tempString.append(str)
                if tempString.first == tempString.last {
                    stringTemp = ""
                    for c in tempString.reversed() {
                        stringTemp.append(c)
                    }
                    if tempString ==  stringTemp {
                        if resultString.count <= tempString.count {
                            resultString = tempString
                            if tempString.count != 1 {
                                tempString = ""
                            }
                        }else {
                            tempString.removeFirst(0)
                        }
                    }
                }
            }else{
                tempString.append(str)
            }
        }
        
        if resultString.count == 0 {
            if tempString.first == nil {
                return ""
            }
            return String.init(tempString.first!)
        }
        
        return resultString
        
    }
}
