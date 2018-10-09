//
//  twenty-oneLinked.swift
//  Leetcode
//
//  Created by 张义镇 on 2018/9/28.
//  Copyright © 2018 一个橙子. All rights reserved.
//

import Cocoa

class twenty_oneLinked: NSObject {
    class func mergeTwoLists(_ l1: twoListNode?, _ l2: twoListNode?) -> twoListNode? {
        
        if l1 == nil && l2 == nil {
            return nil
        }
        if l1 != nil && l2 == nil {
            return l1
        }
        if l2 != nil && l1 == nil {
            return l2
        }
        
        var l11 = l1
        var l22 = l2
        let result = twoListNode.init(0)
        var temp = result
        while l11 != nil && l22 != nil {
            let val1 = l11?.val ?? 0
            let val2 = l22?.val ?? 0
            if val1 > val2 {
                temp.next = twoListNode.init(val2)
                temp = temp.next!
                l22 = l22?.next
            }else {
                temp.next = twoListNode.init(val1)
                temp = temp.next!
                l11 = l11?.next
            }
        }
        temp.next = l11
        temp = temp.next ?? temp
        temp.next = l22
        temp = temp.next ?? temp
        return result.next
        
    }
}
