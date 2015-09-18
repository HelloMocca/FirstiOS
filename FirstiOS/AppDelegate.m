//
//  AppDelegate.m
//  FirstiOS
//
//  Created by mocca on 2015. 9. 10..
//  Copyright (c) 2015년 mocca. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "MyTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"NOT RUNNING->INACTIVE");
    UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [window makeKeyAndVisible]; //keywindow를 visible로 설정
    [self setWindow:window]; //window를 appDelegate에 세팅
    
    UIViewController *viewController = [[ViewController alloc] init]; //View Controller 생성
    //View Controller를 Window의 rootViewController로 지정
    MyTableViewController *myTableViewController = [[MyTableViewController alloc] init];
    [[self window] setRootViewController:myTableViewController];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"ACTIVE->INACTIVE");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"INACTIVE->BACKGROUND");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"BACKGROUND->INACTIVE");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"INACTIVE->ACTIVE");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"BACKGROUND->TERMINATE");
}

@end
