//
//  AppDelegate.m
//  HTSSimpleProfile
//
//  Created by ハン・エンショウ on 2019/07/09.
//  Copyright © 2019 fan. All rights reserved.
//

#import "AppDelegate.h"
#import "HTSProfileViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    BOOL InternetSwitch = NO;
    
    NSDictionary *modelsDictionary = @{
                                      @"localUserModelString": @"user_local",
                                      @"localVideoModelString": @"video_local",
                                      @"remoteUserModelString": @"https://github.com/shiroshanshan/IES-Homework/raw/develop/HTSSimpleProfile/HTSSimpleProfile/ProfileData/user.json",
                                      @"remoteVideoModelString": @"https://github.com/shiroshanshan/IES-Homework/raw/develop/HTSSimpleProfile/HTSSimpleProfile/ProfileData/video.json",
                                      };
    
    // create view model
    HTSProfileViewModel *viewModel = [[HTSProfileViewModel alloc] initWithModels:modelsDictionary throughInternet:InternetSwitch];
    
    // create view controller
    HTSProfileViewController *profileViewController = [[HTSProfileViewController alloc] initWithViewModel:viewModel];
        
    // create navigation controller
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:profileViewController];
//    navigationController.navigationBarHidden = YES;
    navigationController.view.backgroundColor = [UIColor whiteColor];
    navigationController.view.tintColor = [UIColor redColor];
    
    self.window.rootViewController = navigationController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
