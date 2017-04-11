//
//  NetworkModule.h
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 16..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>
@class DataCenter;



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
