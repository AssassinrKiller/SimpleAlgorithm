//
//  XHMergeSortedList.h
//  algorithm
//
//  Created by 许焕 on 2020/6/22.
//  Copyright © 2020 AssassinrKiller. All rights reserved.
//  有序数组的归并算法

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XHMergeSortedList : NSObject
//有序数组的归并算法
+ (NSArray *)mergeListWithListA:(NSArray *)a ListB:(NSArray *)b;
@end

NS_ASSUME_NONNULL_END
