//
//  main.cpp
//  04-Two-Sum-II
//
//  Created by ios on 2019/3/27.
//  Copyright © 2019 KN. All rights reserved.
//

// 167. Two Sum II - Input array is sorted
// https://leetcode-cn.com/problems/two-sum-ii-input-array-is-sorted/
//
// 暴力枚举法
// 时间复杂度: O(n^2)
// 空间复杂度: O(1)

/*
 167. 两数之和 II - 输入有序数组
 
 给定一个已按照升序排列 的有序数组，找到两个数使得它们相加之和等于目标数。
 
 函数应该返回这两个下标值 index1 和 index2，其中 index1 必须小于 index2。
 
 说明:
 
 返回的下标值（index1 和 index2）不是从零开始的。
 你可以假设每个输入只对应唯一的答案，而且你不可以重复使用相同的元素。
 示例:
 
 输入: numbers = [2, 7, 11, 15], target = 9
 输出: [1,2]
 解释: 2 与 7 之和等于目标数 9 。因此 index1 = 1, index2 = 2 。
 
 */
#include <iostream>
#include <vector>

using namespace std;

class Solution {
public:
    // 会超时
    vector<int> twoSum1(vector<int>& numbers, int target) {
        
        for (int i = 0 ; i < numbers.size() ; i++) {
            for (int j = i + 1; j < numbers.size(); j++) {
                if (numbers[i] + numbers[j] == target) {
                    vector<int> result;
                    result.push_back(i + 1);
                    result.push_back(j + 1);
                    return result;
                }
            }
        }
        throw invalid_argument("the input has no solution");
    }
    
    // 二分搜索
    vector<int> twoSum2(vector<int>& numbers, int target) {
        
        for (int i = 0 ; i < numbers.size(); i++) {
            int n = binarySearch(numbers, i + 1, numbers.size() - 1, target - numbers[i]);
            if (n != -1) {
                vector<int> result;
                result.push_back(i + 1);
                result.push_back(n + 1);
                return result;
            }
        }
        throw invalid_argument("the input has no solution");
    }
    
    // 指针对撞
    vector<int> twoSum3(vector<int>& numbers, int target) {
        
        int l = 0, r = numbers.size() - 1;      // [l , r]
        
        while (l <= r) {
            int numberL = numbers[l];
            int numberR = numbers[r];
            if (numberL + numberR == target) {
                vector<int> result;
                result.push_back(l + 1);
                result.push_back(r + 1);
                return result;
            }
            
            if (target < numberL + numberR) {
                r--;
            }else {
                l++;
            }
        }
        
        throw invalid_argument("the input has no solution");
    }
    
    
    
private:
    
    int binarySearch(vector<int> &nums , int l , int r, int target ) {
        
        while (l <= r) {    // [l,r]
            int mid = l + (r - l) / 2;
            if (nums[mid] == target) {
                return mid;
            }
            
            if (target < nums[mid]) {
                r = mid - 1;
            }else {
                l = mid + 1;
            }
        }
        
        return -1;
    }
    
};

int main(int argc, const char * argv[]) {
    
    
    int nums[] = {2, 7, 11, 15};
    vector<int> vec(nums, nums + sizeof(nums) / sizeof(int));
    int target = 9;
    
    vector<int> res = Solution().twoSum3(vec, target);
    for(int i = 0 ; i < res.size() ; i ++)
        cout << res[i] << " ";
    cout << endl;
    
    return 0;
}
