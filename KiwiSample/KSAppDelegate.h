//
//  KSAppDelegate.h
//  KiwiSample
//
//  Created by Ryoichi Hara on 2013/04/18.
//  Copyright (c) 2013年 Ryoichi Hara. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KSViewController;

@interface KSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) KSViewController *viewController;

@end
