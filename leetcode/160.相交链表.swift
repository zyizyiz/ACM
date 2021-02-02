/*
 * @lc app=leetcode.cn id=160 lang=swift
 *
 * [160] 相交链表
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
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var currentA = headA
        var currentB = headB
        while  currentA !== currentB {
            currentA = (currentA != nil) ? currentA?.next : headB
            currentB = (currentB != nil) ? currentB?.next : headA
        }
        return currentA
    }
}
// @lc code=end

