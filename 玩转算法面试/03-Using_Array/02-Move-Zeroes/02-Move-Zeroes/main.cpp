//
//  main.cpp
//  02-Move-Zeroes
//
//  Created by ios on 2019/3/27.
//  Copyright © 2019 KN. All rights reserved.
//


// 283. Move Zeroes
// https://leetcode-cn.com/problems/move-zeroes/
// 时间复杂度: O(n)
// 空间复杂度: O(n)

/*
 
 283. 移动零
 给定一个数组 nums，编写一个函数将所有 0 移动到数组的末尾，同时保持非零元素的相对顺序。
 
 输入: [0,1,0,3,12]
 输出: [1,3,12,0,0]
 */
#include <iostream>
#include <vector>

using namespace std;

class Solution {
public:
    void moveZeroes1(vector<int>& nums) {
        
        vector<int> nonZeroElements;
        
        for (int i = 0; i < nums.size(); i++) {
            if (nums[i]) {
                nonZeroElements.push_back(nums[i]);
            }
        }
        
        for (int i = 0; i < nonZeroElements.size(); i++) {
            nums[i] = nonZeroElements[i];
        }
        
        for (int i = nonZeroElements.size(); i < nums.size(); i++) {
            nums[i] = 0;
        }
    }
    
    void moveZeroes2(vector<int>& nums) {
        
        int k = 0;      // 保证k索引的值不为0
        
        for (int i = 0; i < nums.size(); i++) {
            if (nums[i]) {
                nums[k++] = nums[i];
            }
        }
        
        for (int i = k; i < nums.size(); i++) {
            nums[i] = 0;
        }
        
    }
    
    void moveZeroes3(vector<int>& nums) {
        
        int k = 0;
        
        for (int i = 0; i < nums.size(); i++) {
            if (nums[i]) {
                swap(nums[k++], nums[i]);
            }
        }
    }
};


int main(int argc, const char * argv[]) {
    
    int arr[] = {0, 1, 0, 3, 12 , 11};
    vector<int> vec(arr, arr + sizeof(arr)/sizeof(int));
    
    Solution().moveZeroes3(vec);
    
    for(int i = 0 ; i < vec.size() ; i ++)
        cout << vec[i] << " ";
    cout << endl;
    return 0;
}
