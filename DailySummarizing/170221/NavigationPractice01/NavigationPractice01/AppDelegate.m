//
//  AppDelegate.m
//  NavigationPractice01
//
//  Created by abyssinaong on 2017. 2. 21..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    /* 1. 가장 밑단 부터 연결한것
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    ViewController *vc = [[ViewController alloc] init];
    
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vc];
    
    self.window.rootViewController = navi;
    [self.window makeKeyAndVisible];
    */
    
    /*
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UIStoryboard *stroy = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewController *vc = [stroy instantiateViewControllerWithIdentifier:@"ViewController"];
        
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vc];
    
    self.window.rootViewController = navi;
    [self.window makeKeyAndVisible];
    */
    
//    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
//    
//    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    
////    ViewController *vc = [story instantiateInitialViewController];
//    
//    UINavigationController *navi = [story instantiateInitialViewController];
//    
//    self.window.rootViewController = navi;
//    [self.window makeKeyAndVisible];
//    
//
    
    // 스토리보드에 뷰컨트롤러만 있고 네비게이션 뷰 컨트롤러 없음
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UIStoryboard *stroy = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewController *vc = [stroy instantiateViewControllerWithIdentifier:@"ViewController"];
    
    SecondViewController *vc2 = [[SecondViewController alloc] init];
    ThirdViewController *vc3 = [[ThirdViewController alloc]init];
    
    
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vc];
    
    UITabBarController *tabbar = [[UITabBarController alloc]init];
    
    tabbar.viewControllers = @[navi, vc2, vc3];
    
//    UIView *u1 = [[UIView alloc] init];
//    UIImageView *img1 = [[UIImageView alloc] init];
//    img1.image = [UIImage imageNamed:@"point"];
//    img1.frame = CGRectMake(0, 0, 50, 50);

    UIImage *img1 = [[UIImage alloc] init];
    img1 = [UIImage imageNamed:@"settings-icon3"];

    // UIImage 사이즈 변환
    CGRect rect = CGRectMake(0,0,30,30);
    UIGraphicsBeginImageContext( rect.size );
    [img1 drawInRect:rect];
    UIImage *picture1 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    NSData *imageData = UIImagePNGRepresentation(picture1);
    UIImage *img=[UIImage imageWithData:imageData];
    
    UITabBarItem *item1 = [[UITabBarItem alloc]initWithTitle:@"point" image:img tag:1];
                           
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:2];
    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMostRecent tag:3];
    
    navi.tabBarItem = item1;
    vc2.tabBarItem = item2;
    vc3.tabBarItem = item3;

    
    self.window.rootViewController = tabbar;
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
