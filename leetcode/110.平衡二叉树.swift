/*
 * @lc app=leetcode.cn id=110 lang=swift
 *
 * [110] 平衡二叉树
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
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        return dfs(root) == -1 ? false : true
    }

    func dfs(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        let leftDepth = dfs(root?.left)
        let rightDepth = dfs(root?.right)

        if leftDepth == -1 || rightDepth == -1 {
            return -1
        }
        if abs(leftDepth - rightDepth) > 1 {
            return -1
        }
        return 1 + max(leftDepth, rightDepth)

        

    }
}
// @lc code=end

