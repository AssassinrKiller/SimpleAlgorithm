//
//  XHMergeSortedList.m
//  algorithm
//
//  Created by 许焕 on 2020/6/22.
//  Copyright © 2020 AssassinrKiller. All rights reserved.
//

#import "XHMergeSortedList.h"

@implementation XHMergeSortedList

+ (NSArray *)mergeListWithListA:(NSArray *)a ListB:(NSArray *)b{
    NSMutableArray *result = [NSMutableArray array];
    NSInteger alen = a.count;
    NSInteger blen = b.count;
    int p = 0;
    int q = 0;
    int i = 0;
    /*
     1.比较第0位的两个数组大小,小的放入新的数组第0位置,
     2.被取出的那个数组坐标++,继续和另一个数组(上一个)数组进行比较
     */
    while (p < alen && q < blen) {
        if ([[a objectAtIndex:p] intValue] <= [[b objectAtIndex:q] intValue]) {
            result[i] = a[p];
            p++;
        }
        else{
            result[i] = b[q];
            q++;
        }
        i++;
    }
    
    //如果a数组还有剩余
    while (p < alen) {
        result[i] = a[p++];
        i++;
    }
    //如果b数组还有剩余
    while (q < blen) {
        result[i] = b[q++];
        i++;
    }
    return [result copy];
}

@end
