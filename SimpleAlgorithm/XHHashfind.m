//
//  XHHashfind.m
//  algorithm
//
//  Created by 许焕 on 2020/6/22.
//  Copyright © 2020 AssassinrKiller. All rights reserved.
//

#import "XHHashfind.h"

@implementation XHHashfind


char findFirstChar(char *cha) {
    char result = '\0';
    int array[256];
    for (int i = 0; i < 256; i++) {
        array[i] = 0;
    }
    char *p = cha;
    while (*p != '\0') {
        array[*(p++)]++;
    }
    p = cha;
    while (*p != '\0') {
        if (array[*p] == 1) {
            result = *p;
            break;
        }
        p++;
    }
    return result;
}

@end
