//
//  main.cpp
//  03-Sort-Colors
//
//  Created by ios on 2019/3/27.
//  Copyright © 2019 KN. All rights reserved.
//

// https://leetcode-cn.com/problems/sort-colors/
//
// 计数排序的思路
// 对整个数组遍历了两遍
// 时间复杂度: O(n)
// 空间复杂度: O(k), k为元素的取值范围

/*
 给定一个包含红色、白色和蓝色，一共 n 个元素的数组，原地对它们进行排序，使得相同颜色的元素相邻，并按照红色、白色、蓝色顺序排列。
 
 此题中，我们使用整数 0、 1 和 2 分别表示红色、白色和蓝色。
 
 注意:
 不能使用代码库中的排序函数来解决这道题。
 
 示例:
 
 输入: [2,0,2,1,1,0]
 输出: [0,0,1,1,2,2]
 */
#include <iostream>
#include <vector>

using namespace std;

class Solution {
public:
    // 计数排序
    void sortColors1(vector<int>& nums) {
        
        int count[3] = {0};  // 存储三种颜色
        for (int i = 0; i < nums.size(); i++) {
            count[nums[i]]++;
        }
        
        int index = 0;
        for (int i = 0; i < count[0]; i++) {
            nums[index++] = 0;
        }
        
        for (int i = 0; i < count[1]; i++) {
            nums[index++] = 1;
        }
        
        for (int i = 0; i < count[2]; i++) {
            nums[index++] = 2;
        }
    }
    
    // 三路快排
    void sortColors2(vector<int>& nums) {
        
        int zero = -1;      // [0,zero] == 0
        
        int two = nums.size();      // [two,n - 1] == 2
        
        for (int i = 0; i < two; ) {
            if (nums[i] == 1) {
                i++;
            }else if (nums[i] == 0) {
                swap(nums[i++], nums[++zero]);
            }else {
                swap(nums[i], nums[--two]);
            }
            
        }
        
    }
};

int main(int argc, const char * argv[]) {
    
    int nums[] = {2, 2, 2, 1, 1, 0};
    vector<int> vec = vector<int>(nums, nums + sizeof(nums)/sizeof(int));
    Solution().sortColors2(vec);
    for(int i = 0 ; i < vec.size() ; i ++)
        cout << vec[i] << " ";
    cout << endl;
    return 0;
}
