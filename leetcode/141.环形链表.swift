/*
 * @lc app=leetcode.cn id=141 lang=swift
 *
 * [141] 环形链表
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        guard let head = head else {
            return false
        }

        var fastNode = head.next?.next
        var slowNode = head.next

        while fastNode != nil {
            if slowNode?.val == fastNode?.val {
                return true
            }else {
                fastNode = fastNode?.next?.next
                slowNode = slowNode?.next
            }
        }

        return false
    }
}
// @lc code=end

