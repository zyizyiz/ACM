//
//  main.swift
//  Leetcode
//
//  Created by 张义镇 on 2018/9/18.
//  Copyright © 2018年 一个橙子. All rights reserved.
//

import Foundation

print("Hello, World!")

///1. 两数之和 *
print(oneSum.twoSum([2,7,11,15], 9))

///2. 两数相加 **
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

///3. 无重复字符的最长子串 **
print("---------------------")
print(threeString.lengthOfLongestSubstring("pwwkew"))

///5. 最长回文子串 **
print("---------------------")
print(fiveString.longestPalindrome("cbbdc"))


///7. 反转整数 *
print("---------------------")
print(sevenReversal.reverse(123))


///9. 回文数 *
print("---------------------")
print(nineString.isPalindrome(1))


///13. 罗马数字转整数 *
print("---------------------")
print(thirteenRome.romanToInt("MCMXCIV"))


///14. 最长公共前缀 *
print("---------------------")
print(fourteenPrefix.longestCommonPrefix(["caa","","a","acb"]))


///20. 有效的括号 *
print("---------------------")
print(twentyValid.isValid("]"))


///21. 合并两个有序链表 *
print("---------------------")
let tol1 = twoListNode.init(val: [-10,-10,-9,-4,1,6,6])
let tol2 = twoListNode.init(val: [-7])
twenty_oneLinked.mergeTwoLists(tol1, tol2)?.twentyOnePrint()
print("xxxxxxxxxxxx")



///26. 删除排序数组中的重复项  *
print("---------------------")
print(twenty_sixRemove.removeDuplicates(&[1]))
