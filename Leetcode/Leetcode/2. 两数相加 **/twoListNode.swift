//
//  towListNode.swift
//  Leetcode
//
//  Created by 张义镇 on 2018/9/19.
//  Copyright © 2018年 一个橙子. All rights reserved.
//

import Cocoa

class twoListNode: NSObject {
    public var val: Int
    public var next: twoListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(val : [Int]) {
        if val.count != 0 {
            self.val = val[0]
        }else {
            
            self.val = 0
        }
        if val.count > 1 {
            self.next = twoListNode.init(val[1])
        }
        if val.count == 3 {
            self.next?.next = twoListNode.init(val[2])
        }
    }
    
    public func twoPrint() {
        if let _ = (self.next?.val), let _ = (self.next?.next?.val) {
            let result = "\(self.val) -> \((self.next?.val)!) -> \((self.next?.next?.val)!)"
            print(result)
            return
        }
        
        if let _ = (self.next?.val) {
            let result = "\(self.val) -> \((self.next?.val)!)"
            print(result)
            return
        }
        let result = "\(self.val)"
        print(result)
    }
    
    public func twentyOnePrint() {
        var node = self
        var result = ""
        while node.next != nil {
            result += "\(node.val) -> "
            node = node.next!
        }
        print("\(result)\(node.val)")
    }
}
