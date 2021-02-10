/*
 * @lc app=leetcode.cn id=225 lang=swift
 *
 * [225] 用队列实现栈
 */

// @lc code=start

class MyStack {

    var queue: [Int]    //队列
    
    /** Initialize your data structure here. */
    init() {
        
        self.queue = [] //初始化
    }
    
    /** Push element x onto stack. */
    func push(_ x: Int) {

        queue.append(x)
        
        for _ in 1..<queue.count {  //每次有新元素入队列，将原队列队首元素依次弹出并从队尾加回到队列中，直到新元素成为队首
            
            queue.append(queue.removeFirst())
        }
    }
    
    /** Removes the element on top of the stack and returns that element. */
    func pop() -> Int {
        
        guard !queue.isEmpty else { fatalError() }
        
        //因为在每次push的时候就同时完成了队列的再整序工作，所以直接弹出队首即可
        return queue.removeFirst()
    }
    
    /** Get the top element. */
    func top() -> Int {
        
        guard !queue.isEmpty else { fatalError() }
        
        //同上
        return queue.first!
    }
    
    /** Returns whether the stack is empty. */
    func empty() -> Bool {
        
        return queue.isEmpty
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Bool = obj.empty()
 */
// @lc code=end

