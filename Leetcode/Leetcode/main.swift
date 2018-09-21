//
//  main.swift
//  Leetcode
//
//  Created by 张义镇 on 2018/9/18.
//  Copyright © 2018年 一个橙子. All rights reserved.
//

import Foundation

print("Hello, World!")

///1. 两数之和
print(oneSum.twoSum([2,7,11,15], 9))

///2. 两数相加
///测试用例 ： 【5】【5】，【1】，【1】，【1，3】
print("---------------------")
let l1 = twoListNode.init(val: [2,4,3])
let l2 = twoListNode.init(val: [5,6,4])
twoAdd.addTwoNumbers(l1, l2)?.twoPrint()
let l11 = twoListNode.init(val: [1,0])
twoAdd.addTwoNumbers(l1,l11)?.twoPrint()
twoAdd.addTwoNumbers(nil,l11)?.twoPrint()
let l22 = twoListNode.init(5)
twoAdd.addTwoNumbers(l22,l22)?.twoPrint()

///3. 无重复字符的最长子串
print("---------------------")
print(threeString.lengthOfLongestSubstring("pwwkew"))

///5. 最长回文子串
print("---------------------")
print(fiveString.longestPalindrome("cbbdc"))


