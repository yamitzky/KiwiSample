//
//  KSSampleSpec.m
//  KiwiSample
//
//  Created by Ryoichi Hara on 2013/04/18.
//  Copyright (c) 2013年 Ryoichi Hara. All rights reserved.
//

#import "Kiwi.h"

SPEC_BEGIN(MathSpec)

describe(@"Math", ^{
    it(@"will be failed", ^{
        NSUInteger a = 16;
        NSUInteger b = 26;
        [[theValue(a + b) should] equal:theValue(43)];
    });
    
    it(@"will be success", ^{
        NSUInteger a = 16;
        NSUInteger b = 26;
        [[theValue(a + b) should] equal:theValue(42)];
    });
});

SPEC_END
