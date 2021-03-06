//
//  main.cpp
//  01-Valid-Parentheses
//
//  Created by ios on 2019/3/28.
//  Copyright © 2019 KN. All rights reserved.
//

// 20. 有效的括号
// https://leetcode-cn.com/problems/valid-parentheses/
// 时间复杂度: O(n)
// 空间复杂度: O(n)

/*
 给定一个只包括 '('，')'，'{'，'}'，'['，']' 的字符串，判断字符串是否有效。
 
 有效字符串需满足：
 
 左括号必须用相同类型的右括号闭合。
 左括号必须以正确的顺序闭合。
 注意空字符串可被认为是有效字符串。
 
 示例 1:
 
 输入: "()"
 输出: true
 示例 2:
 
 输入: "()[]{}"
 输出: true
 示例 3:
 
 输入: "(]"
 输出: false
 示例 4:
 
 输入: "([)]"
 输出: false
 示例 5:
 
 输入: "{[]}"
 输出: true
 */
#include <iostream>
#include <string>
#include <stack>

using namespace std;

class Solution {
public:
    bool isValid(string s) {
        
        stack<char> stack;
        for (int i = 0; i < s.size(); i++) {
            if (s[i] == '(' || s[i] == '{' || s[i] == '[') {
                stack.push(s[i]);
            }else {
                if (stack.size() == 0) {
                    return false;
                }
                
                char c = stack.top();
                stack.pop();
                
                char match;
                if (s[i] == ')') {
                    match = '(';
                }else if (s[i] == '}') {
                    match = '{';
                }else {
                    match = '[';
                }
                if (c != match) {
                    return false;
                }
            }
        }
        
        if (stack.size() != 0) {
            return false;
        }
        
        return true;
    }
};

int main(int argc, const char * argv[]) {
    
    if(Solution().isValid("()"))
        cout << "() is valid." << endl;
    else
        cout << "() is invalid." << endl;
    
    if(Solution().isValid("()[]{}"))
        cout << "()[]{} is valid." << endl;
    else
        cout << "()[]{} is invalid." << endl;
    
    if(Solution().isValid("(]"))
        cout << "(] is valid." << endl;
    else
        cout << "(] is invalid." << endl;
    
    if(Solution().isValid("([)]"))
        cout << "([)] is valid." << endl;
    else
        cout << "([)] is invalid." << endl;

    return 0;
}
