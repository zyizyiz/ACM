/*
 * @lc app=leetcode.cn id=203 lang=swift
 *
 * [203] 移除链表元素
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        
        var dummyHead = ListNode(Int.max)
        dummyHead.next = head
        var cur = head
        var prev = dummyHead
        while  cur != nil {
            if cur!.val == val {
                prev.next = cur!.next
            }else {
                prev = prev.next!
            }
            cur = cur?.next
        }
        return dummyHead.next
    }
}
// @lc code=end

