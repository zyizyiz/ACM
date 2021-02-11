/*
 * @lc app=leetcode.cn id=232 lang=swift
 *
 * [232] 用栈实现队列
 */

// @lc code=start

class MyQueue {

    //! 存放要添加的元素 栈
    var addStack:Array<Int>
    //! 存放要移除的元素 栈
    var removeStack:Array<Int>
    
    /** Initialize your data structure here. */
    init() {
      addStack = Array.init()
      removeStack = Array.init()
    }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
      if !removeStack.isEmpty {
        move(&removeStack, to: &addStack)
      }
      addStack.append(x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
      if !addStack.isEmpty {
        move(&addStack, to: &removeStack)
      }
      return removeStack.popLast() ?? -1
    }
    
    /** Get the front element. */
    func peek() -> Int {
      if !addStack.isEmpty {
        move(&addStack, to: &removeStack)
      }
      return removeStack.last ?? -1
    }
    
    func empty() -> Bool {
      return addStack.isEmpty && removeStack.isEmpty
    }
    
    func move(_ left: inout [Int], to right: inout [Int]) {
      while !left.isEmpty {
        right.append(left.popLast()!)
      }
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */
// @lc code=end

