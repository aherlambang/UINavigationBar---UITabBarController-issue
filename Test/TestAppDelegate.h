//
//  TestAppDelegate.h
//  Test
//
//  Created by Aditya Herlambang on 9/15/11.
//  Copyright 2011 University of Arizona. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TestViewController;

@interface TestAppDelegate : NSObject <UIApplicationDelegate, UINavigationControllerDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TestViewController *viewController;

@end
