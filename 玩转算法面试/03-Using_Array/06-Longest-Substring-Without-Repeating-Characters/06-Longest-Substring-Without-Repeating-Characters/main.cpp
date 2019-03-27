//
//  main.cpp
//  06-Longest-Substring-Without-Repeating-Characters
//
//  Created by ios on 2019/3/27.
//  Copyright © 2019 KN. All rights reserved.
//

// 3. 无重复字符的最长子串
// https://leetcode-cn.com/problems/longest-substring-without-repeating-characters/
//
// 滑动窗口
// 时间复杂度: O(len(s))
// 空间复杂度: O(len(charset))

/*
 给定一个字符串，请你找出其中不含有重复字符的 最长子串 的长度。
 
 示例 1:
 
 输入: "abcabcbb"
 输出: 3
 解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
 示例 2:
 
 输入: "bbbbb"
 输出: 1
 解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
 示例 3:
 
 输入: "pwwkew"
 输出: 3
 解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
 请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。
 */
#include <iostream>
#include <string>

using namespace std;

class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        
        int freq[256] = {0};
        
        int l = 0, r = -1;      // [l, r] 滑动窗口大小
        
        int res = 0;
        
        while (l < s.size()) {
            
            if (r + 1 < s.size() && freq[s[r + 1]] == 0) {
                freq[s[++r]]++;     // 用z字母做索引的值,移动右边界
            }else {
                freq[s[l++]]--;     // 若滑动窗口内有值重复,则一直移动左边界
            }
            res = max(res , r - l + 1);     // 最长子串
        }
        return res;
    }
};

int main(int argc, const char * argv[]) {
   
    cout << Solution().lengthOfLongestSubstring( "abcabcbb" )<<endl; //3
    cout << Solution().lengthOfLongestSubstring( "bbbbb" )<<endl;    //1
    cout << Solution().lengthOfLongestSubstring( "pwwkew" )<<endl;   //3
    cout << Solution().lengthOfLongestSubstring( "c" )<<endl;        //1
    cout << Solution().lengthOfLongestSubstring( "" )<<endl;         //0
    return 0;
}
