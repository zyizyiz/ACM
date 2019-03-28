//
//  main.cpp
//  04-4Sum-II
//
//  Created by ios on 2019/3/28.
//  Copyright © 2019 KN. All rights reserved.
//

//  454. 四数相加 II
//  https://leetcode-cn.com/problems/4sum-ii/

/*
 给定四个包含整数的数组列表 A , B , C , D ,计算有多少个元组 (i, j, k, l) ，使得 A[i] + B[j] + C[k] + D[l] = 0。
 
 为了使问题简单化，所有的 A, B, C, D 具有相同的长度 N，且 0 ≤ N ≤ 500 。所有整数的范围在 -228 到 228 - 1 之间，最终结果不会超过 231 - 1 。
 
 例如:
 
 输入:
 A = [ 1, 2]
 B = [-2,-1]
 C = [-1, 2]
 D = [ 0, 2]
 
 输出:
 2
 
 解释:
 两个元组如下:
 1. (0, 0, 0, 1) -> A[0] + B[0] + C[0] + D[1] = 1 + (-2) + (-1) + 2 = 0
 2. (1, 1, 0, 0) -> A[1] + B[1] + C[0] + D[0] = 2 + (-1) + (-1) + 0 = 0
 
 */

#include <iostream>
#include <vector>
#include <unordered_map>

using namespace std;

class Solution {
public:
    int fourSumCount(vector<int>& A, vector<int>& B, vector<int>& C, vector<int>& D) {
        
        unordered_map<int , int > hashtable;
        for (int i = 0; i < C.size(); i++) {
            for (int j = 0; j < D.size(); j++) {
                hashtable[C[i] + D[j]] += 1;        // 可能有多个和为该值
            }
        }
        
        int res = 0;
        for (int i = 0; i < A.size(); i++) {
            for (int j = 0; j < B.size(); j++) {
                if (hashtable.find(-A[i] - B[j]) != hashtable.end()) {
                    res += hashtable[-A[i]-B[j]];   // 直接加上多个解
                }
            }
        }
        return res;
        
    }
};

int main(int argc, const char * argv[]) {
    
    int a[] = {1, 2};
    int b[] = {-2, -1};
    int c[] = {-1, 2};
    int d[] = {0, 2};
    vector<int> a_vec = vector<int>(a, a + sizeof(a)/sizeof(int));
    vector<int> b_vec = vector<int>(b, b + sizeof(b)/sizeof(int));
    vector<int> c_vec = vector<int>(c, c + sizeof(c)/sizeof(int));
    vector<int> d_vec = vector<int>(d, d + sizeof(d)/sizeof(int));
    
    cout << Solution().fourSumCount(a_vec, b_vec, c_vec, d_vec) << endl;
    return 0;
}
