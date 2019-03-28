//
//  main.cpp
//  06-Remove-Nth-Node-From-End-of-List
//
//  Created by ios on 2019/3/28.
//  Copyright © 2019 KN. All rights reserved.
//


// 19. 删除链表的倒数第N个节点
// https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/
//
// 先记录链表总长度
// 需要对链表进行两次遍历
// 时间复杂度: O(n)
// 空间复杂度: O(1)

/*
 给定一个链表，删除链表的倒数第 n 个节点，并且返回链表的头结点。
 
 示例：
 
 给定一个链表: 1->2->3->4->5, 和 n = 2.
 
 当删除了倒数第二个节点后，链表变为 1->2->3->5.
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
    ListNode* removeNthFromEnd1(ListNode* head, int n) {
        
        ListNode* dummyHead = new ListNode(0);
        dummyHead->next = head;
        int length = 0;
        for (ListNode *cur = dummyHead->next; cur != NULL; cur = cur->next) {
            length++;
        }
        
        int k = length - n;
        ListNode* cur = dummyHead;
        for (int i = 0; i < k; i++) {
            cur = cur->next;
        }
        
        ListNode* delNode = cur->next;
        cur->next = delNode->next;
        delete delNode;
        
        ListNode *retNode = dummyHead->next;
        delete dummyHead;
        return retNode;
    }
    
    
    ListNode* removeNthFromEnd2(ListNode* head, int n) {
        ListNode* dummyHead = new ListNode(0);
        dummyHead->next = head;
        
        ListNode* begin = dummyHead;
        ListNode* end = dummyHead;
        for (int i = 0; i < n + 1; i++) {
            end = end->next;
        }
        
        while (end) {
            begin = begin->next;
            end = end->next;
        }
        
        ListNode* delNode = begin->next;
        begin->next = delNode->next;
        delete delNode;
        
        ListNode *retNode = dummyHead->next;
        delete dummyHead;
        return retNode;
    }
};

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}
