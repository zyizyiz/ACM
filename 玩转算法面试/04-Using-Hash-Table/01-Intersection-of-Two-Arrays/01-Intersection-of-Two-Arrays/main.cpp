//
//  main.cpp
//  01-Intersection-of-Two-Arrays
//
//  Created by ios on 2019/3/28.
//  Copyright © 2019 KN. All rights reserved.
//

// 349. 两个数组的交集
// https://leetcode-cn.com/problems/intersection-of-two-arrays/
// 时间复杂度: O(nlogn)
// 空间复杂度: O(n)

/*
 给定两个数组，编写一个函数来计算它们的交集。
 
 示例 1:
 
 输入: nums1 = [1,2,2,1], nums2 = [2,2]
 输出: [2]
 示例 2:
 
 输入: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 输出: [9,4]
 
 */
#include <iostream>
#include <vector>
#include <set>

using namespace std;

class Solution {
public:
    vector<int> intersection1(vector<int>& nums1, vector<int>& nums2) {
        
        set<int> record;
        for (int i = 0; i < nums1.size(); i++) {
            record.insert(nums1[i]);
        }
        
        set<int> resultSet;
        for (int i = 0; i < nums2.size(); i++) {
            if (record.find(nums2[i]) != record.end()) {
                resultSet.insert(nums2[i]);
            }
        }
        
        vector<int> resultVector;
        for (set<int>::iterator iter = resultSet.begin() ; iter != resultSet.end(); iter++) {
            resultVector.push_back(*iter);
        }
        return resultVector;
    }
    
    
    vector<int> intersection2(vector<int>& nums1, vector<int>& nums2) {
        
        set<int> record(nums1.begin(), nums1.end());
        
        set<int> resultSet;
        
        for (int i = 0; i < nums2.size(); i++) {
            if (record.find(nums2[i]) != record.end()) {
                resultSet.insert(nums2[i]);
            }
        }
        return vector<int>(resultSet.begin(), resultSet.end());
    }
};

int main(int argc, const char * argv[]) {
    
    int nums1[] = {1, 2, 2, 1};
    vector<int> vec1(nums1, nums1 + sizeof(nums1)/sizeof(int));
    
    int nums2[] = {2, 2};
    vector<int> vec2(nums2, nums2 + sizeof(nums2)/sizeof(int));
    
    vector<int> res = Solution().intersection1(vec1, vec2);
    for(int i = 0 ; i < res.size() ; i ++ )
        cout << res[i] << " ";
    cout << endl;

    return 0;
}
