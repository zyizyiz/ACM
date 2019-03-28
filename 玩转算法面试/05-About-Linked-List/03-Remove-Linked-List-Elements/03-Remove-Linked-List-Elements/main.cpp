//
//  main.cpp
//  03-Remove-Linked-List-Elements
//
//  Created by ios on 2019/3/28.
//  Copyright © 2019 KN. All rights reserved.
//

//  203. 移除链表元素
//  https://leetcode-cn.com/problems/remove-linked-list-elements/

/*
 删除链表中等于给定值 val 的所有节点。
 
 示例:
 
 输入: 1->2->6->3->4->5->6, val = 6
 输出: 1->2->3->4->5
 
 */
#include <iostream>

using namespace std;

struct ListNode {
    int val;
    ListNode *next;
    ListNode(int x) : val(x), next(NULL) {}
};


void printLinkedList(ListNode* head) {
    if (head == NULL) {
        cout << "NULL" << endl;
        return;
    }
    
    ListNode* curNode = head;
    
    while (curNode != NULL) {
        cout << curNode->val;
        if (curNode->next != NULL) {
            cout << " -> ";
        }
        curNode = curNode->next;
    }
    cout << endl;
    return;
}

ListNode* createLinkedList(int arr[], int n) {
    if (n == 0) {
        return NULL;
    }
    
    ListNode* head = new ListNode(arr[0]);
    ListNode* curNode = head;
    for (int i = 1; i < n; i++) {
        curNode->next = new ListNode(arr[i]);
        cout << "赋值前：" << endl;
        printLinkedList(curNode);
        printLinkedList(head);
        curNode = curNode->next;
        cout << "赋值后：" << endl;
        printLinkedList(curNode);
        printLinkedList(head);
    }
    
    return head;
}

void deleteLinkedList(ListNode* head) {
    ListNode *curNode = head;
    while (curNode != NULL) {
        ListNode *delNode = curNode;
        curNode = curNode->next;
        delete delNode;
    }
    return;
}

class Solution {
public:
    ListNode* removeElements1(ListNode* head, int val) {
        
        // 需要对头结点做特殊处理
        while (head != NULL && head->val == val) {
            ListNode* node = head;
            head = head->next;
            delete node;
        }
        
        if (head == NULL) {
            return head;
        }
        
        ListNode* cur = head;
        while (cur->next != NULL) {
            if (cur->next->val == val) {
                ListNode* delNode = cur->next;
                cur->next = delNode->next;
                delete delNode;
            }else {
                cur = cur->next;
            }
        }
        
        return head;
    }
    
    ListNode* removeElements2(ListNode* head, int val) {
        
        // 创建虚拟头结点
        ListNode* dummyHead = new ListNode(0);
        dummyHead->next = head;
        
        ListNode* cur = dummyHead;
        while (cur->next != NULL) {
            if (cur->next->val == val) {
                ListNode* delNode = cur->next;
                cur->next = delNode->next;
                delete delNode;
            }else {
                cur = cur->next;
            }
        }
        return head;
    }
};

int main(int argc, const char * argv[]) {
    
    int arr[] = {1, 2, 6, 3, 4, 5, 6};
    int n = sizeof(arr) / sizeof(int);
    
    ListNode* head = createLinkedList(arr, n);
    printLinkedList(head);
    
    Solution().removeElements2(head, 6);
    printLinkedList(head);
    
    deleteLinkedList(head);

    return 0;
}
