/*
 * @lc app=leetcode.cn id=155 lang=swift
 *
 * [155] 最小栈
 */

// @lc code=start

class MinStack {

    private var stack : [Int]
    private var minStack : [Int]

    /** initialize your data structure here. */
    init() {
        stack = []
        minStack = []
    }
    
     func push(_ x: Int) {
        stack.append(x)
        guard let min = minStack.last ,min < x else{
            minStack.append(x)
            return
        }
    }
    
    func pop() {
        if let last = stack.popLast(){
            if let min = minStack.last ,min >= last{
                minStack.popLast()
            }
        }
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int {
        return minStack.last!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
// @lc code=end

