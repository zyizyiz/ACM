/*
 * @lc app=leetcode.cn id=111 lang=swift
 *
 * [111] 二叉树的最小深度
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
    func minDepth(_ root: TreeNode?) -> Int {
        if root == nil {
             return 0
        }
        return dfs(root) + 1
    }

    func dfs(_ root: TreeNode?) -> Int {
        if root == nil {
            return -1
        }else if root?.left == nil && root?.right == nil {
            return 0
        }

        var leftDepth = dfs(root?.right)
        var rightDepth = dfs(root?.left)
        if leftDepth == -1 {
            return rightDepth + 1
        }else if rightDepth == -1 {
            return leftDepth + 1
        }
        return min(leftDepth, rightDepth) + 1
    }
}
// @lc code=end

