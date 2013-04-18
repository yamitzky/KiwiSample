//
//  KSSampleMocks.m
//  KiwiSample
//
//  Created by Ryoichi Hara on 2013/04/18.
//  Copyright (c) 2013年 Ryoichi Hara. All rights reserved.
//

#import "Kiwi.h"
#import "KSTestClass.h"

SPEC_BEGIN(SampleMocks)

describe(@"KSTestClass", ^{
    
    describe(@"Generate some of mocks", ^{
        __block KSTestClass *testMock1 = nil;
        __block KSTestClass *testMock2 = nil;
        
        beforeEach(^{
            testMock1 = [KSTestClass mock];
            testMock2 = [KSTestClass nullMock];
        });
        
        it(@"is member of KSTestClass", ^{
            [[testMock1 should] beMemberOfClass:[KSTestClass class]];
        });
        
        it(@"has temporary property", ^{
            [[testMock1 should] receive:@selector(currentStatus)
                              andReturn:theValue(@"normality")];
            [[theValue(testMock1.currentStatus) should] equal:theValue(@"normality")];
        });
        
        pending(@"is null mock", ^{
        });
    });
    
});

SPEC_END