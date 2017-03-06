//
//  DataCenter.h
//  LoginPage01
//
//  Created by abyssinaong on 2017. 2. 24..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

@property NSString *iD;
@property NSString *pW;
@property NSString *repw;
@property NSDictionary *idAndPw;

+ (instancetype)shareDate;

- (NSString *)loadTitle:(NSInteger)arrayNum;

- (NSString *)loadBtnArray:(NSInteger)arrayNum;


@end
