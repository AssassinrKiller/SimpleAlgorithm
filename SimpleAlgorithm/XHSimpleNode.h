//
//  XHSimpleNode.h
//  SimpleAlgorithm
//
//  Created by huan xu on 2023/9/12.
//  Copyright © 2023 AssassinrKiller. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XHSimpleNode : NSObject

@property (nonatomic, assign) NSInteger value;

@property (nonatomic, strong, nullable) XHSimpleNode *next;

@end

NS_ASSUME_NONNULL_END
