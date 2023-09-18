//
//  XHReverseList.m
//  algorithm
//
//  Created by 许焕 on 2020/6/22.
//  Copyright © 2020 AssassinrKiller. All rights reserved.
//

#import "XHReverseList.h"

//链表反转
// 1 -> 2 -> 3 -> 4 -> 5
// 1 <- 2 <- 3 <- 4 <- 5



struct Node* reverseList(struct Node *head) {
    
    struct Node* p = head;
    struct Node* newN = NULL;
    
    while (p != NULL) {
        struct Node* temp = p->next;
        p->next = newN;
        newN = p;
        p = temp;
    }
    return newN;
}
//构造链表
struct Node* constructList(int length) {
    //定义一个头结点
    struct Node *head = NULL;
    //记录当前结尾节点
    struct Node *cur = NULL;
    for (int i = 0; i < length; i++) {
        struct Node *node = malloc(sizeof(struct Node));
        node -> data = i;
        //头结点为空,新节点即为头结点
        if (head == NULL) {
            head = node;
        }//当前节点的next为新节点
        else {
            cur -> next = node;
        }
        //设置当前节点为新节点
        cur = node;
    }
    return head;
}
//打印链表中的数据
void printList(struct Node *head){
    struct Node *temp = head;
    while (temp != NULL) {
        printf("node is %d \n", temp -> data);
        temp = temp -> next;
    }
}


