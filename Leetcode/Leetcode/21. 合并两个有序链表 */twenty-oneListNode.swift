//
//  twenty-oneListNode.swift
//  Leetcode
//
//  Created by 张义镇 on 2018/9/28.
//  Copyright © 2018 一个橙子. All rights reserved.
//

import Cocoa

class twenty_oneListNode: NSObject {
    public var val: Int
    public var next: twenty_oneListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
