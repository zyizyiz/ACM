//
//  MyUtil.h
//  01-Binary-Search
//
//  Created by ios on 2019/3/27.
//  Copyright © 2019 KN. All rights reserved.
//

#ifndef MyUtil_h
#define MyUtil_h

#include <iostream>
#include <algorithm>
#include <cassert>

using namespace std;

namespace MyUtil {
    
    /*
        创建一个随机数组
        n       数组的长度
        rangeL  数组的下限
        rangeR  数组的上线
     */
    int *generateRandomArray(int n, int rangeL, int rangeR)
    {
        assert(n > 0 && rangeL <= rangeR);
        
        int *arr = new int[n];
        for (int i = 0;  i < n ; i++) {
            arr[i] = rand() % (rangeR - rangeL + 1) + rangeL;
        }
        return arr;
    }
    
    /*
        创建一个有序数组
        n   数组的长度。  数组的元素从0到n
     */
    int *generateOrderedArray(int n)
    {
        assert(n > 0);
        
        int *arr = new int[n];
        for (int i = 0; i < n ; i++) {
            arr[i] = i;
        }
        return arr;
    }
}


#endif /* MyUtil_h */
