//
//  sevenReversal.swift
//  Leetcode
//
//  Created by 张义镇 on 2018/9/21.
//  Copyright © 2018年 一个橙子. All rights reserved.
//

/*
 给定一个 32 位有符号整数，将整数中的数字进行反转。
 
 示例 1:
 
 输入: 123
 输出: 321
 示例 2:
 
 输入: -123
 输出: -321
 示例 3:
 
 输入: 120
 输出: 21
 注意:
 
 假设我们的环境只能存储 32 位有符号整数，其数值范围是 [−2次方31,  2次方31 − 1]。根据这个假设，如果反转后的整数溢出，则返回 0。
 */
import Cocoa

class sevenReversal: NSObject {
    
    class func reverse(_ x: Int) -> Int {
        
        let xString = "\(abs(x))"
        var resultString = ""
        for str in xString.reversed() {
            resultString.append(str)
        }
        var resultInt = 0
        if x < 0 {
            resultInt = -Int(resultString)!
        }else {
            resultInt = Int(resultString)!
        }
        ///leetcode平台 pow会报错
        ////if -2147483648 <= resultInt && resultInt <= 2147483647 {
        let boundary = "\(pow(2, 31))"
        
        if -Int(boundary)! <= resultInt && resultInt <= Int(boundary)! - 1 {
            return resultInt
        }else {
            return 0
        }
    }
}
