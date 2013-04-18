//
//  KSSampleSpecs.m
//  KiwiSample
//
//  Created by Ryoichi Hara on 2013/04/18.
//  Copyright (c) 2013年 Ryoichi Hara. All rights reserved.
//

#import "Kiwi.h"
#import "KSTestClass.h"

SPEC_BEGIN(SampleSpecs)

describe(@"KSTestClass", ^{
    
    describe(@"a state the component is in", ^{
        __block KSTestClass *test = nil;
        
        beforeAll(^{ // Occurs once
        });
        
        afterAll(^{ // Occurs once
        });
        
        beforeEach(^{ // Occurs before each enclosed "it"
            test = [[KSTestClass alloc] init];
        });
        
        afterEach(^{ // Occurs after each enclosed "it"
        });
        
        it(@"will be success", ^{
            NSUInteger a = 16;
            NSUInteger b = 26;
            [[theValue(a + b) should] equal:theValue(42)];
        });
        
        it(@"should not be nil", ^{
            [[test shouldNot] beNil];
        });
        
        specify(^{
            [test shouldNotBeNil];
        });
    });
});

SPEC_END