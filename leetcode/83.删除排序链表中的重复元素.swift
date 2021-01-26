/*
 * @lc app=leetcode.cn id=83 lang=swift
 *
 * [83] 删除排序链表中的重复元素
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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
      
      guard let headOk = head else {
          return head;
      }
      var preNode : ListNode? = headOk;
      var nowNode : ListNode? = headOk.next;

      while preNode != nil {
          if preNode?.val != nowNode?.val {
              preNode?.next = nowNode
              preNode = nowNode
          }
          nowNode = nowNode?.next

      }
      return headOk
    }
}
// @lc code=end

