/*
 * @lc app=leetcode.cn id=206 lang=swift
 *
 * [206] 反转链表
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

    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        let newNode = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        return newNode
    }

    func reverseList_for(_ head: ListNode?) -> ListNode? {
        var current = head
        var prev: ListNode? = nil
        while current != nil {
            let preNode = current?.next
            current?.next = prev
            prev = current
            current = preNode
        }
        return prev
    }
}
// @lc code=end

