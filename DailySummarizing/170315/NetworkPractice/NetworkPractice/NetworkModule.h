//
//  NetworkModule.h
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 16..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const BASIC_API = @"https://fc-ios.lhy.kr/api";
static NSString * const SIGNUP_ADDRESS = @"/member/signup/";
static NSString * const LOGIN_ADDRESS = @"/member/login/";
static NSString * const LOGOUT_ADDRESS = @"/member/logout/";
static NSString * const POST_ADDRESS = @"/post/";

@interface NetworkModule : NSObject

- (void)networkModuleLoginInsertUsername:(NSString *)username
                          insertPassword:(NSString *)password
                         loginCompletion:(void(^)(BOOL, NSInteger))completion;

- (void)networkModuleLogoutSetCompletion:(void(^)(BOOL))completion;

- (void)networkModuleSignupInsertUsername:(NSString *)username
                          insertPassword1:(NSString *)password1
                           isertPassword2:(NSString *)password2
                          loginCompletion:(void(^)(BOOL))completion;
- (void)networkModuleMultipartfromPostCreat:(NSString *)title
                                 setContent:(NSString *)content
                                   setImage:(NSData *)imageData
                           mulitiComplition:(void(^)(BOOL))completion;


- (void)networkModulePostListSetPage:(NSString *)page
                      dataComplition:(void (^)(id array, BOOL isDone))complition;
@end
