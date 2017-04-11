//
//  DataCenter.h
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 15..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NetworkModule.h"
#import "PostData.h"





@interface DataCenter : NSObject

@property NSString *accessToken;
@property NSMutableArray *postDataArray;

+ (instancetype)shareData;

- (void)dataCenterLoginSetName:(NSString *)username
                   setPassword:(NSString *)password loginCompletion:(void(^)(BOOL isSuccess, NSInteger errorCode))completion;

- (void)dataCenterLogoutSetCompletion:(void(^)(BOOL isSuccess))completion;


- (void)dataCenterSignupInsertUsername:(NSString *)username
                       insertPassword1:(NSString *)password1
                        isertPassword2:(NSString *)password2
                       loginCompletion:(void(^)(BOOL isSuccess))completion;

- (void)dataCenterMultipartInsert:(NSString *)title
                    insertContent:(NSString *)content
                      insertImage:(UIImage *)image
                  multiComplition:(void(^)(BOOL isSuccess))complition;
- (void)dataCenterSetContent;
@end
