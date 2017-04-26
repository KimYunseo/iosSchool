//
//  DataCenter.h
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DataCenter : NSObject

@property (nonatomic, weak) NSString *distanceUnit;
@property (nonatomic, weak) NSString *temperature;
@property (nonatomic, readonly) NSString *firstName;
@property (nonatomic, readonly) NSString *lastName;
@property (nonatomic, readonly) NSString *hometown;

@property UIImage *profileImage;

+ (instancetype)sharedInstance;
- (void)imageSave:(NSData *)image;
- (void)firstNameSave:(NSString *)fName;
- (void)lastNameSave:(NSString *)lName;
- (void)hometownSave:(NSString *)hometown;


@end
