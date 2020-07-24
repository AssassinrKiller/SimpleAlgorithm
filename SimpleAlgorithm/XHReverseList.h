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

@interface XHReverseList : NSObject
//链表反转
struct Node* reverseList(struct Node *head);
//构造链表
struct Node* constructList(void);
//打印链表中的数据
void printList(struct Node *head);

@end

NS_ASSUME_NONNULL_END
