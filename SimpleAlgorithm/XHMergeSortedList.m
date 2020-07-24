//
//  XHMergeSortedList.m
//  algorithm
//
//  Created by 许焕 on 2020/6/22.
//  Copyright © 2020 AssassinrKiller. All rights reserved.
//

#import "XHMergeSortedList.h"

@implementation XHMergeSortedList

void mergeList(int a[], int alen, int b[], int blen, int result[]){
    
    //有序数组合并
    int p = 0;
    int q = 0;
    int i = 0;
    while (p < alen && q < blen) {
        if (a[p] <= b[q]) {
            result[i] = a[p];
            p++;
        }
        else{
            result[i] = b[q];
            q++;
        }
        i++;
    }
    
    while (p < alen) {
        result[i] = a[p++];
        i++;
    }
    
    while (q < blen) {
        result[i] = b[q++];
        i++;
    }
    
}

@end
