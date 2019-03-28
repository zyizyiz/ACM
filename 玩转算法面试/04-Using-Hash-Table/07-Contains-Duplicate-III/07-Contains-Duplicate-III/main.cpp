//
//  main.cpp
//  07-Contains-Duplicate-III
//
//  Created by ios on 2019/3/28.
//  Copyright © 2019 KN. All rights reserved.
//


// 220. 存在重复元素 III
// https://leetcode-cn.com/problems/contains-duplicate-iii/
// 时间复杂度: O(nlogk)
// 空间复杂度: O(k)

/*
 给定一个整数数组，判断数组中是否有两个不同的索引 i 和 j，使得 nums [i] 和 nums [j] 的差的绝对值最大为 t，并且 i 和 j 之间的差的绝对值最大为 ķ。
 
 示例 1:
 
 输入: nums = [1,2,3,1], k = 3, t = 0
 输出: true
 示例 2:
 
 输入: nums = [1,0,1,1], k = 1, t = 2
 输出: true
 示例 3:
 
 输入: nums = [1,5,9,1,5,9], k = 2, t = 3
 输出: false
 */
#include <iostream>
#include <vector>
#include <set>

using namespace std;

class Solution {
public:
    bool containsNearbyAlmostDuplicate(vector<int>& nums, int k, int t) {
        
        set<long long> record;
        
        for (int i = 0; i < nums.size(); i++) {
            if (record.lower_bound((long long)nums[i] - (long long)t) != record.end() && *record.lower_bound((long long)nums[i] - (long long)t) <= (long long)nums[i] + (long long)t) {
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
    
    int nums[] = {-2147483648, -2147483647};
    vector<int> vec(nums, nums + sizeof(nums)/sizeof(int));
    int k = 3;
    int t = 3;
    
    if(Solution().containsNearbyAlmostDuplicate(vec, k, t))
        cout << "true" << endl;
    else
        cout << "false" << endl;

    return 0;
}
