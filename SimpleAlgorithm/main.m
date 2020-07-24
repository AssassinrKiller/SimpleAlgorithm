//
//  main.m
//  SimpleAlgorithm
//
//  Created by 许焕 on 2020/7/24.
//  Copyright © 2020 AssassinrKiller. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrintTriangle.h"
#import "XHMergeSortedList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //杨辉三角打印
        [PrintTriangle PrintTriangleWithNum:8];
        
        //有序数组合并
        NSArray *result = [XHMergeSortedList mergeListWithListA:@[@1,@3,@5] ListB:@[@2,@4,@6,@8]];
        NSLog(@"%@",result);
        
    }
    return 0;
}
