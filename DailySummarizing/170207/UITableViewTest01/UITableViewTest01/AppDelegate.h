//
//  AppDelegate.h
//  UITableViewTest01
//
//  Created by abyssinaong on 2017. 2. 7..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

