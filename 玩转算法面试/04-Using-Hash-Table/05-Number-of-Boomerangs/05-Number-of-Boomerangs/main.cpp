//
//  main.cpp
//  05-Number-of-Boomerangs
//
//  Created by ios on 2019/3/28.
//  Copyright © 2019 KN. All rights reserved.
//

// 447. 回旋镖的数量
// https://leetcode-cn.com/problems/number-of-boomerangs/
// 时间复杂度: O(n^2)
// 空间复杂度: O(n)

/*
 给定平面上 n 对不同的点，“回旋镖” 是由点表示的元组 (i, j, k) ，其中 i 和 j 之间的距离和 i 和 k 之间的距离相等（需要考虑元组的顺序）。
 
 找到所有回旋镖的数量。你可以假设 n 最大为 500，所有点的坐标在闭区间 [-10000, 10000] 中。
 
 示例:
 
 输入:
 [[0,0],[1,0],[2,0]]
 
 输出:
 2
 
 解释:
 两个回旋镖为 [[1,0],[0,0],[2,0]] 和 [[1,0],[2,0],[0,0]]
 
 */
#include <iostream>
#include <vector>
#include <unordered_map>

using namespace std;

class Solution {
public:
    int numberOfBoomerangs(vector<pair<int, int>>& points) {
        
        int res = 0;
        for (int i = 0; i < points.size(); i++) {
            
            // record中存储 点i 到所有其他点的距离出现的频次
            unordered_map<int, int> record;
            for (int j = 0; j < points.size(); j++) {
                if (j != i) {
                    // 计算距离时不进行开根运算, 以保证精度
                    record[dis(points[i], points[j])]++;
                }
            }
            
            for (unordered_map<int, int>::iterator iter = record.begin(); iter != record.end(); iter++) {
                res += iter->second * (iter->second - 1);
            }
            
        }
        return res;
    }
    
private:
    int dis(const pair<int, int> &pa, const pair<int, int> &pb) {
        return (pa.first - pb.first) * (pa.first - pb.first) + (pa.second - pb.second) * (pa.second - pb.second);
    }
};

int main(int argc, const char * argv[]) {
    
    vector<pair<int,int>> vec;
    vec.push_back(make_pair(0, 0));
    vec.push_back(make_pair(1, 0));
    vec.push_back(make_pair(2, 0));
    
    cout << Solution().numberOfBoomerangs(vec) << endl;
    return 0;
}
