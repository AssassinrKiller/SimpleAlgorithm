//
//  XHListReverse.m
//  SimpleAlgorithm
//
//  Created by huan xu on 2023/9/14.
//  Copyright © 2023 AssassinrKiller. All rights reserved.
//

#import "XHListReverse.h"

@implementation XHListReverse

+ (NSArray<NSString *> *)reverseWithList:(NSArray<NSString *> *)list {
    if (!list.count) {
        return nil;
    }
    
    NSMutableArray *mutableList = [list mutableCopy];
    NSInteger begin = 0;
    NSInteger end = list.count - 1;

    while (begin < end) {
        NSString *temp = [mutableList objectAtIndex:begin];
        NSString *endStr = [mutableList objectAtIndex:end];
        [mutableList replaceObjectAtIndex:begin withObject:endStr];
        [mutableList replaceObjectAtIndex:end withObject:temp];

        begin++;
        end--;
    }
    return mutableList;
}

@end
