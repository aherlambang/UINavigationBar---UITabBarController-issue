//
//  TestAppDelegate.m
//  Test
//
//  Created by Aditya Herlambang on 9/15/11.
//  Copyright 2011 University of Arizona. All rights reserved.
//

#import "TestAppDelegate.h"
#import "BaseViewController.h"
#import "TestViewController.h"
#import "MapViewController.h"
#import "ProfileViewController.h"

@implementation TestAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    BaseViewController * tabBarController = [[BaseViewController alloc] init];
    
    UINib *nib = [UINib nibWithNibName:@"CustomNavigationBar" bundle:nil]; 
    UINavigationController *navController = (UINavigationController *)[[nib instantiateWithOwner:nil options:nil] objectAtIndex:0];
    navController.delegate = self;
    NSMutableArray *localControllersArray = [[NSMutableArray alloc] initWithCapacity:3];
    
    /********************************MAP VIEW*************************************************/
    
    
    MapViewController * map = [[MapViewController alloc] init];
    [navController pushViewController:map animated:YES];
    [localControllersArray addObject:navController];
    
    //[localNavigationController release];
    [map release];
    
    /********************************PROFILE ***************************************************/
    
    ProfileViewController * profile = [[ProfileViewController alloc] init];
    [localControllersArray addObject:profile];
    
    //[localNavigationController release];
    [profile release];
    
    /*******************************************************************************************/
    
    tabBarController.viewControllers = localControllersArray;
    [localControllersArray release];

     
    [self.window addSubview:tabBarController.view];
    [self.window makeKeyAndVisible];
    [tabBarController release];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

@end