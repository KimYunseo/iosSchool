//
//  NetworkModule.h
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 16..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
static NSString * const basicAPI = @"https://fc-ios.lhy.kr/api";
static NSString * const signUPAdress = @"/member/signup/";
static NSString * const loginAdress = @"/member/login/";
static NSString * const logoutAddress = @"/member/logout/";

typedef BOOL (^saveLogin) (void);
@interface NetworkModule : NSObject
@property BOOL loginAccept;
@property saveLogin loginBlock;

//- (saveLogin)loginSessionInsertUsername:(NSString *)username
//                    insertPassword:(NSString *)password;

//- (saveLogin)loginSessionInsertUsername:(NSString *)username
//                         insertPassword:(NSString *)password loginCompletion:(BOOL(^)(BOOL))completion;

- (void)loginSessionInsertUsername:(NSString *)username
                         insertPassword:(NSString *)password loginCompletion:(void(^)(BOOL))completion;



- (void)logoutSessionSetCompletion:(void(^)(BOOL))completion;

- (void)signupSessionInsertUsername:(NSString *)username
                    insertPassword1:(NSString *)password1
                     isertPassword2:(NSString *)password2
                    loginCompletion:(void(^)(BOOL))completion;
@end
