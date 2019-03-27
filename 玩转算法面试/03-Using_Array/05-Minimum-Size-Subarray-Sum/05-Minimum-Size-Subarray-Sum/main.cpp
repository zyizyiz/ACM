//
//  main.cpp
//  05-Minimum-Size-Subarray-Sum
//
//  Created by ios on 2019/3/27.
//  Copyright © 2019 KN. All rights reserved.
//


// 209. 长度最小的子数组
// https://leetcode-cn.com/problems/minimum-size-subarray-sum/
//
// 暴力解法
// 该方法在 Leetcode 中会超时！
// 时间复杂度: O(n^3)
// 空间复杂度: O(1)

/*
 给定一个含有 n 个正整数的数组和一个正整数 s ，找出该数组中满足其和 ≥ s 的长度最小的连续子数组。如果不存在符合条件的连续子数组，返回 0。
 
 示例:
 
 输入: s = 7, nums = [2,3,1,2,4,3]
 输出: 2
 解释: 子数组 [4,3] 是该条件下的长度最小的连续子数组。
 
 */
#include <iostream>
#include <vector>

using namespace std;
class Solution {
public:
    
    // 会超时
    int minSubArrayLen1(int s, vector<int>& nums) {
        
        int res = nums.size() + 1;
        
        for (int l = 0; l < nums.size(); l++) {
            for (int r = l; r < nums.size(); r++) {
                int sum = 0;
                for (int i = l ; i <= r; i++) {
                    sum += nums[i];
                }
                if (sum >= s) {
                    res = min(res, r - l + 1);      // 运算相加的个数
                }
            }
        }
        
        if (res == nums.size() + 1) {
            return 0;
        }
        return res;
    }
    
    // 优化暴力解 还是会超时
    int minSubArrayLen2(int s, vector<int>& nums) {
        
        // sums[i] 存放nums[0,i - 1]的和
        vector<int> sums(nums.size() + 1, 0);
        for (int i = 1; i <= nums.size(); i++) {
            sums[i] = sums[i - 1] + nums[i - 1];
        }
        
        int res = nums.size() + 1;
        
        for (int l = 0; l < nums.size(); l++) {
            for (int r = l; r < nums.size(); r++) {
                
                if (sums[r + 1] - sums[l] >= s) {
                    res = min(res, r - l + 1);
                }
            }
        }
        if (res == nums.size() + 1) {
            return 0;
        }
        return res;
        
    }
    
    // 滑动窗口思路
    int minSubArrayLen3(int s, vector<int>& nums) {
        
        int l = 0, r = -1;      // [l,r]为滑动窗口
        
        int sum = 0;
        int res = nums.size() + 1;
        
        while (l < nums.size()) {
            if (r + 1 < nums.size() && sum < s) {
                sum += nums[++r];
            }else {
                sum -= nums[l++];
            }
            
            if (sum >= s) {
                res = min(res, r - l + 1);
            }
        }
        if (res == nums.size() + 1) {
            return 0;
        }
        return res;
        
    }
    
};


int main(int argc, const char * argv[]) {
    
    int nums[] = {2, 3, 1, 2, 4, 3};
    vector<int> vec(nums, nums + sizeof(nums)/sizeof(int));
    int s = 7;
    
    cout << Solution().minSubArrayLen3(s, vec) << endl;

    return 0;
}
