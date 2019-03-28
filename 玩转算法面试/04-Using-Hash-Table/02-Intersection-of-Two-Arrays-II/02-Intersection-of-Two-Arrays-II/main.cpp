//
//  main.cpp
//  02-Intersection-of-Two-Arrays-II
//
//  Created by ios on 2019/3/28.
//  Copyright © 2019 KN. All rights reserved.
//

// 350. 两个数组的交集 II
// https://leetcode-cn.com/problems/intersection-of-two-arrays-ii/
// 时间复杂度: O(nlogn)
// 空间复杂度: O(n)

/*
 给定两个数组，编写一个函数来计算它们的交集。
 
 示例 1:
 
 输入: nums1 = [1,2,2,1], nums2 = [2,2]
 输出: [2,2]
 示例 2:
 
 输入: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 输出: [4,9]
 
 */
#include <iostream>
#include <vector>
#include <map>
#include <set>

using namespace std;

class Solution {
public:
    vector<int> intersect1(vector<int>& nums1, vector<int>& nums2) {
        
        map<int , int> record;
        for (int i = 0; i < nums1.size(); i++) {
            record[nums1[i]] += 1;
        }
        
        vector<int> resultVector;
        for (int i = 0; i < nums2.size(); i++) {
            if (record.find(nums2[i]) != record.end() && record[nums2[i]] != 0) {
                resultVector.push_back(nums2[i]);
                record[nums2[i]]--;
            }
        }
        return resultVector;
    }
    
    vector<int> intersect2(vector<int>& nums1, vector<int>& nums2) {
        multiset<int> record;
        for (int num : nums1) {
            record.insert(num);
        }
        
        multiset<int> result;
        for (int num : nums2) {
            multiset<int>::iterator iter = record.find(num);
            if (iter != record.end()) {
                result.insert(num);
                record.erase(iter);
            }
        }
        return vector<int>(result.begin(), result.end());
    }
};

int main(int argc, const char * argv[]) {
    int nums1[] = {1, 2, 2, 1};
    vector<int> vec1(nums1, nums1 + sizeof(nums1)/sizeof(int));
    
    int nums2[] = {2, 2};
    vector<int> vec2(nums2, nums2 + sizeof(nums2)/sizeof(int));
    
    vector<int> res = Solution().intersect2(vec1, vec2);
    for(int i = 0 ; i < res.size() ; i ++)
        cout << res[i] << " ";
    cout << endl;
    return 0;
}
