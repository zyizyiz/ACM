/*
 * @lc app=leetcode.cn id=108 lang=swift
 *
 * [108] 将有序数组转换为二叉搜索树
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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return bst(nums, 0, nums.count - 1)
           
    }

    func bst(_ nums: [Int], _ left: Int, _ right: Int) -> TreeNode? {
        
        if left > right {
            return nil;
        }

        let mid : Int = (right + left) / 2
        let root = TreeNode.init(nums[mid]);
        root.left = bst(nums, left, mid - 1)
        root.right = bst(nums, mid + 1, right)
        return root
        
    }
}
// @lc code=end

