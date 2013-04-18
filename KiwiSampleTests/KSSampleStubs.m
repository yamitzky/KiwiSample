//
//  KSSampleStubs.m
//  KiwiSample
//
//  Created by Ryoichi Hara on 2013/04/18.
//  Copyright (c) 2013年 Ryoichi Hara. All rights reserved.
//

#import "Kiwi.h"
#import "KSTestClass.h"

SPEC_BEGIN(SampleStubs)

describe(@"KSTestClass", ^{
    
    describe(@"Generate some of mocks", ^{
        __block KSTestClass *testMock1 = nil;
        
        beforeEach(^{
            testMock1 = [KSTestClass mock];
        });
        
        it(@"has stub method", ^{
            [[testMock1 stubAndReturn:theValue(@"World!")] greet:@"Hello"];
            NSString *hello = [testMock1 greet:@"Hello"];
            [[theValue(hello) should] equal:theValue(@"World!")];
        });
        
        specify(^{
            [KSTestClass stub:@selector(classification) andReturn:@"Not a moon"];
            [[[KSTestClass classification] should] equal:@"Not a moon"];
        });
    });
    
});

SPEC_END