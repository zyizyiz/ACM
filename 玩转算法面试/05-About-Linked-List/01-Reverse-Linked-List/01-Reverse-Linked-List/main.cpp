//
//  main.cpp
//  01-Reverse-Linked-List
//
//  Created by ios on 2019/3/28.
//  Copyright © 2019 KN. All rights reserved.
//

// 206. 反转链表
// https://leetcode-cn.com/problems/reverse-linked-list/
// 时间复杂度: O(n)
// 空间复杂度: O(1)

/*
 反转一个单链表。
 
 示例:
 
 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL
 */
#include <iostream>

using namespace std;

struct ListNode {
     int val;
     ListNode *next;
     ListNode(int x) : val(x), next(NULL) {}
};

class Solution {
public:
    ListNode* reverseList1(ListNode* head) {
        
        ListNode* pre = NULL;
        ListNode* cur = head;
        while (cur != NULL) {
            ListNode* next = cur->next;     // 先获取cur的下一个节点
            cur->next = pre;                // 将cur的下一个节点替换成pre
            pre = cur;                      // 将cur赋值给pre
            cur = next;                     // 遍历cur的下一个节点
        }
        
        return pre;
    }
    
    
    ListNode* reverseList2(ListNode* head) {
        
        if (head == NULL || head->next ==NULL) {
            return head;
        }
        
        ListNode *rhead = reverseList2(head->next);
        
        // head->next此刻指向head后面的链表的尾节点
        // head->next->next = head把head节点放在了尾部
        head->next->next = head;
        head->next = NULL;
        
        return rhead;
    }
};

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}
