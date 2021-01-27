/*
 * @lc app=leetcode.cn id=107 lang=swift
 *
 * [107] 二叉树的层序遍历 II
 */

// @lc code=start
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {

    var levels: [[Int]] = []

    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }
        bfs(root, 0)
        return levels.reversed()
    }

    func bfs(_ root: TreeNode, _ level: Int) {
        if levels.count == level {
            levels.append([])
        }
        levels[level].append(root.val)
        if let left = root.left {
            bfs(left, level + 1)
        }
        if let right = root.right {
            bfs(right, level + 1)
        }
    }

    /// BFS 广度优先搜索
    func levelOrderBottom_BFS_For(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }

        var res : [[Int]] = []
        var queue : [TreeNode] = [root]
        while !queue.isEmpty {
            var levelRes : [Int] = []
            
            for _ in 0..<queue.count {
                let node = queue.removeFirst()
                levelRes.append(node.val)
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }  
            }
            res.insert(levelRes, at: 0) 
        }
        return res
    }
}
// @lc code=end

