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



//冒泡排序   3,2,5,4,1,6
void BubbleSort1(int *arr, int aLen){
    for (int i = 0; i < aLen; i++) {
        for (int j = 0; j < (aLen - i - 1); j++) {
            if (arr[j] > arr[j+1]) {
                int temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}

//插入排序  3,2,5,4,1,6
void InsertSort(int *arr, int aLen){
    int j,temp;
//    for (int i = 1; i < aLen; i++) {
//        j = i - 1;
//        temp = arr[i];
//        while (arr[j] > temp && j >= 0) {
//            arr[j+1] = arr[j];
//            j--;
//        }
//        arr[j + 1] = temp;
//    }
    for (int i = 1; i < aLen; i++) {
        temp = arr[i];
        for (j = i - 1; j >= 0 && arr[j] > temp; j--) {
            arr[j+1] = arr[j];
        }
        arr[j+1] = temp;
    }
}

//选择排序
void SelectedSort(int *a, int aLen){
    int index;
    for (int i = 0; i < aLen; i++) {
        index = i;
        for (int j = i + 1; j < aLen; j++) {
            if (a[index] > a[j]) {
                index = j;
            }
        }
        if (index != i) {
            a[i] = a[i] + a[index];
            a[index] = a[i] - a[index];
            a[i] = a[i] - a[index];
        }
    }
}

//打印杨辉三角形状并使用*填充
void testPrint(int n) {
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < i+1; j++) {
            printf("*");
        }
        printf("\n");
    }
}

/**
 寻找最长回文字符串  @[@"a",@"b",@"a",@"v",@"c",@"c",@"v",@"b"]
 下面这种是暴力解法,比较笨
 */
void LongestPalindromicSubstring(NSArray *str){
    int sLen = (int)str.count;
    int max = 0,//保存在大长度回文串
     begain = 0,//记录回文串的开始坐标
        end = 0;//记录回文串的结束坐标
    for (int i = 0; i < sLen; i++) {
        for (int j = i+1; j < sLen; j++) {
            if (str[i] == str[j]) {
                int p = i,q = j;
                while (str[p] == str[q]) {
                    if (p == q || q-p == 1) {
                        if (max < j - i) {
                            max = j - i;
                            end = j;
                            begain = i;
                        }
                        break;
                    }
                    p++;q--;
                }
            }
        }
    }
    NSString *result = @"";
    for (int i = begain; i <= end; i++) {
        result = [NSString stringWithFormat:@"%@%@",result,str[i]];
    }
    NSLog(@"%@",result);
}


NSArray *findSumIndexs(NSArray *arr, NSInteger target) {
    NSInteger startIndex = -1;
    NSInteger endIndex = -1;
    for (NSInteger i = 0; i < arr.count; i++) {
        NSInteger temp = [arr[i] integerValue];
        if (temp > target) {
            continue;
        }
        for (NSInteger j = i + 1; j < arr.count; j++) {
            NSInteger temp1 = [arr[j] integerValue];
            if (target == temp + temp1) {
                endIndex = j;
                startIndex = i;
                break;
            }
        }
        if (endIndex + startIndex) {
            return @[@(startIndex),@(endIndex)];
        }
    }
    return nil;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //杨辉三角打印
//        [PrintTriangle PrintTriangleWithNum:10];
        
        //有序数组合并
//        NSArray *result = [XHMergeSortedList mergeListWithListA:@[@1,@3,@5] ListB:@[@2,@4,@6,@8]];
//        NSLog(@"%@",result);
        
//        int arr[] = {1,2,5,3,7,6,4};
//        BubbleSort1(arr,6);
//        for (int i = 0; i < 6; i++) {
//            printf("%d \n",arr[i]);
//        }
        
        
//        testPrint(6);
//        InsertSort(arr, 6);
//        for (int p = 0; p < 6; p++) {
//            printf("%d",arr[p]);
//        }
        
//        SelectedSort(arr,7);
//        for (int p = 0; p < 7; p++) {
//            printf("%d",arr[p]);
//        }
        
        //abvveaaerf
//        LongestPalindromicSubstring(@[@"a",@"b",@"v",@"j",@"o",@"c",@"v",@"b"]);
        NSArray *result = findSumIndexs(@[@(11),@(2),@(3),@(6),@(7),@(1)], 3);
        NSLog(@"%@",result);
        
    }
    return 0;
}


