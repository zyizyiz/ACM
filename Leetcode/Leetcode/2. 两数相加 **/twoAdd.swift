//
//  twoAdd.swift
//  Leetcode
//
//  Created by 张义镇 on 2018/9/19.
//  Copyright © 2018年 一个橙子. All rights reserved.
//

/*
 给定两个非空链表来表示两个非负整数。位数按照逆序方式存储，它们的每个节点只存储单个数字。将两数相加返回一个新的链表。
 
 你可以假设除了数字 0 之外，这两个数字都不会以零开头。
 
 示例：
 
 输入：(2 -> 4 -> 3) + (5 -> 6 -> 4)
 输出：7 -> 0 -> 8
 原因：342 + 465 = 807
 */
import Cocoa

class twoAdd: NSObject {

    class func addTwoNumbers(_ l1: twoListNode?, _ l2: twoListNode?) -> twoListNode? {
        var p1 = l1
        var p2 = l2
        var carry = 0
        let resultNode = twoListNode.init(0)
        //同个对象 引用
        var currNode = resultNode
        while p1 != nil || p2 != nil {
            let num1 : Int = p1?.val != nil ? (p1?.val)! : 0
            let num2 : Int = p2?.val != nil ? (p2?.val)! : 0
            var addNum = num1 + num2
            if carry == 1 {
                addNum += 1
                carry = 0
            }
            if addNum >= 10 {
                addNum = addNum - 10
                carry = 1
            }
            currNode.next = twoListNode.init(addNum)
            currNode = currNode.next!
            p1 = p1?.next
            p2 = p2?.next
        }
        if carry == 1 {
            currNode.next = twoListNode.init(carry)
        }
        return resultNode.next
    }
}
