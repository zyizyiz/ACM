//
//  main.cpp
//  06-Contains-Duplicate-II
//
//  Created by ios on 2019/3/28.
//  Copyright © 2019 KN. All rights reserved.
//

// 219. 存在重复元素 II
// https://leetcode-cn.com/problems/contains-duplicate-ii/
// 时间复杂度: O(n)
// 空间复杂度: O(k)

/*
 给定一个整数数组和一个整数 k，判断数组中是否存在两个不同的索引 i 和 j，使得 nums [i] = nums [j]，并且 i 和 j 的差的绝对值最大为 k。
 
 示例 1:
 
 输入: nums = [1,2,3,1], k = 3
 输出: true
 示例 2:
 
 输入: nums = [1,0,1,1], k = 1
 输出: true
 示例 3:
 
 输入: nums = [1,2,3,1,2,3], k = 2
 输出: false
 */
#include <iostream>
#include <vector>
#include <unordered_set>

using namespace std;

class Solution {
public:
    bool containsNearbyDuplicate(vector<int>& nums, int k) {
        
        if (nums.size() <= 1) {
            return false;
        }
        if (k <= 0) {
            return false;
        }
        
        unordered_set<int> record;
        for (int i = 0; i < nums.size(); i++) {
            if (record.find(nums[i]) != record.end()) {
                return true;
            }
            
            record.insert(nums[i]);
            
            if (record.size() == k + 1) {
                record.erase(nums[i - k]);
            }
        }
        return false;
    }
};

int main(int argc, const char * argv[]) {
    
    int nums[] = {1, 2, 1};
    vector<int> vec(nums, nums + sizeof(nums)/sizeof(int));
    int k = 1;
    
    if(Solution().containsNearbyDuplicate(vec, k))
        cout << "true" << endl;
    else
        cout << "false" << endl;
    
    return 0;
}
