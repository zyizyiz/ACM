/*
 * @lc app=leetcode.cn id=21 lang=swift
 *
 * [21] 合并两个有序链表
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

    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var pHeader = ListNode(-1)
        var l1Temp = l1
        var l2Temp = l2

        var prev = pHeader
        while l1Temp != nil && l2Temp != nil {
            
            if l1Temp!.val <= l2Temp!.val {
                prev.next = l1Temp;
                l1Temp = l1Temp!.next
            }else {
                prev.next = l2Temp;
                l2Temp = l2Temp!.next
            }
            prev = prev.next!
        }
        prev.next = l1Temp == nil ? l2Temp : l1Temp
        return pHeader.next;

    }
    func mergeTwoLists_recursion(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1Ok = l1 else {
            return l2
        }
        guard let l2Ok = l2 else {
            return l1
        }
        if l1Ok.val < l2Ok.val {
            l1Ok.next = mergeTwoLists(l1Ok.next, l2Ok)
            return l1Ok
        }else {
            l2Ok.next = mergeTwoLists(l1Ok, l2Ok.next)
            return l2Ok
        }
    }
}
// @lc code=end

