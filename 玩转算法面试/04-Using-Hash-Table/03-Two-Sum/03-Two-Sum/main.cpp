//
//  main.cpp
//  03-Two-Sum
//
//  Created by ios on 2019/3/28.
//  Copyright © 2019 KN. All rights reserved.
//

// 1. 两数之和
// https://leetcode-cn.com/problems/two-sum/
// 时间复杂度：O(n)
// 空间复杂度：O(n)

/*
 给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
 
 你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。
 
 示例:
 
 给定 nums = [2, 7, 11, 15], target = 9
 
 因为 nums[0] + nums[1] = 2 + 7 = 9
 所以返回 [0, 1]
 */

#include <iostream>
#include <vector>
#include <unordered_map>

using namespace std;

class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        unordered_map<int, int > record;
        
        for (int i = 0; i < nums.size(); i++) {
            
            int complement = target - nums[i];
            if (record.find(complement) != record.end()) {
                int res[] = {i,record[complement]};
                return vector<int>(res, res + 2);
            }
            
            record[nums[i]] = i;
        }
        
        throw invalid_argument("the input has no solution");
    }
};

int main(int argc, const char * argv[]) {
    
    const int nums[] = {0,4,3,0};
    vector<int> nums_vector(nums , nums + sizeof(nums) / sizeof(int));
    int target = 0;
    vector<int> res = Solution().twoSum(nums_vector, target);
    cout << res[0] << " " << res[1] << endl;
    
    return 0;
}
