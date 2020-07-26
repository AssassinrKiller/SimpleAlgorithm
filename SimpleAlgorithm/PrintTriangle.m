//
//  PrintTriangle.m
//  algorithm
//
//  Created by 许焕 on 2020/7/23.
//  Copyright © 2020 AssassinrKiller. All rights reserved.
//

#import "PrintTriangle.h"

@implementation PrintTriangle

+ (void)PrintTriangleWithNum:(int)num{
    //给定一个二维数组
    int a[num][num];
    
    //全部使用0来占位
    for (int i = 0; i < num; i++) {
        for (int j  = 0; j < num; j++) {
            a[i][j] = 0;
        }
    }
    
    //每一行的首尾位都是1
    for (int i = 0; i < num; i++) {
        a[i][0] = 1;
        a[i][i] = 1;
    }
    
    //从第三行开始等于上一行相邻两个数的和
    for (int i = 2; i < num; i++) {
        for (int j = 1; j < i; j++) {
            a[i][j] = a[i-1][j-1] + a[i-1][j];
        }
    }

    //打印这个二维数组
    for (int i = 0; i < num ; i++) {
        for (int j = 0 ; j < num; j++) {
            printf("%d",a[i][j]);
            printf("  ");
        }
        //每行打印结束换行
        printf("\n");
    }
}





@end
