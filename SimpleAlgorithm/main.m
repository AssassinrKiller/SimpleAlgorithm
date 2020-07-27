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
 寻找最长回文字符串  @[@"a",@"b",@"v",@"c",@"c",@"v"]
 下面这种是暴力解法,比较笨
 */
void LongestPalindromicSubstring(NSArray *str){
    int sLen = (int)str.count;
    int jump = 0,
         max = 0,
      begain = 0,
         end = 0;
    
    for (int i = 0; i < sLen; i++) {
        for (int j = i+1; j < sLen; j++) {
            if (str[i] == str[j]) {
                int p = i,q = j;
                while (str[p] != str[j] && p < q) {
                    jump = 1;
                    break;
                }
                p++;
                q--;
                if (jump == 1) {
                     break;
                }
                if (max < j - i) {
                    max = j - i;
                    end = j;
                    begain = i;
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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //杨辉三角打印
//        [PrintTriangle PrintTriangleWithNum:8];
        
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
        LongestPalindromicSubstring(@[@"a",@"b",@"v",@"c",@"c",@"v",@"b"]);
    }
    return 0;
}


