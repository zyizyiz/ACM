/*
 * @lc app=leetcode.cn id=101 lang=swift
 *
 * [101] 对称二叉树
 */

// @lc code=start
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isSameNode(root?.left,root?.right)
    }

    func isSameNode(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        
        if left == nil && right == nil {
            return true
        }else if left == nil || right == nil {
            return false
        }else if left?.val != right?.val {
            return false
        }else {
            return isSameNode(left?.left, right?.right) && isSameNode(left?.right,right?.left)
        }
        
    }
}
// @lc code=end

