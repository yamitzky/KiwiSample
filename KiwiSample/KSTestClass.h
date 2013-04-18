//
//  KSTestClass.h
//  KiwiSample
//
//  Created by Ryoichi Hara on 2013/04/18.
//  Copyright (c) 2013年 Ryoichi Hara. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KSTestClass : NSObject

@property (nonatomic, strong) NSObject *currentStatus;

- (NSString *)greet:(NSString *)password;
+ (NSString *)classification;

@end
