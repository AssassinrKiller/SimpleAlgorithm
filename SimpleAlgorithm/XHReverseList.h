//
//  XHReverseList.h
//  algorithm
//
//  Created by 许焕 on 2020/6/22.
//  Copyright © 2020 AssassinrKiller. All rights reserved.
//  链表反转

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//定义一个节点
struct Node{
    int data;
    struct Node *next;//下一个节点
};

//链表反转
struct Node* reverseList(struct Node *head);
//构造链表
struct Node* constructList(int length);

//打印链表中的数据
void printList(struct Node *head);

/**
 算法:重拍链表
 输入:给定一个单向链表,
  1 -> 2 -> 3 -> 4 -> 5
 输出:返回一个单向链表
  1 -> 5 -> 2 -> 4 -> 3
 */

struct Node* reSorted(struct Node *head);

NS_ASSUME_NONNULL_END
