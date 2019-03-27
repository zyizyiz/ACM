//
//  main.cpp
//  01-Binary-Search
//
//  Created by ios on 2019/3/27.
//  Copyright © 2019 KN. All rights reserved.
//  二分搜索

#include <iostream>
#include <algorithm>
#include <cmath>
#include "MyUtil.h"
#include <ctime>
#include <cassert>

template<typename T>
/*
    arr         需要查找的数组
    n           数组的长度
    target      需要查找的值
 
    return      值在数组的索引     未找到的情况返回-1
 */
int binarySearch(T arr[], int n, T target)
{
    int l = 0, r = n - 1;   // [0 , n -1]
    while (l <= r) {
        int mid = l + (r - l) / 2;   // 防止int越界
        if (arr[mid] == target) {
            return mid;
        }
        
        if (target < arr[mid]) {
            r = mid - 1;
        }else {
            l = mid + 1;
        }
    }
    return -1;
}

int main(int argc, const char * argv[]) {
    
    int n = pow(10, 7);
    int *data = MyUtil::generateOrderedArray(n);

    clock_t startTime = clock();
    for (int i = 0; i < n; i++) {
        assert(i == binarySearch(data, n, i));
    }
    
    clock_t endTime = clock();
    
    cout << "Binary Search test complete." << endl;
    cout << "Time cost: " << double(endTime - startTime) / CLOCKS_PER_SEC << " s" << endl;

    
    return 0;
}
