//
//  XHReverseList.m
//  algorithm
//
//  Created by 许焕 on 2020/6/22.
//  Copyright © 2020 AssassinrKiller. All rights reserved.
//

#import "XHReverseList.h"

@implementation XHReverseList

//链表反转
struct Node* reverseList(struct Node *head){
    //定义遍历指针,初始化为头结点
    struct Node *p = head;
    //反转链表头部
    struct Node *newH = NULL;
    //遍历链表
    while (p != NULL) {
        //记录下一个节点
        struct Node *temp = p -> next;
        //当前节点的next指向新链表的头部
        p -> next = newH;
        //更改新链表头部为当前节点
        newH = p;
        //移动p指针
        p  = temp;
    }
    return newH;
}
//构造链表
struct Node* constructList(void){
    //定义一个头结点
    struct Node *head = NULL;
    //记录当前结尾节点
    struct Node *cur = NULL;
    for (int i = 1; i < 5; i++) {
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



@end
