//
//  DataCenter.h
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 15..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NetworkModule.h"

@interface DataCenter : NSObject
@property (readonly) NSMutableArray *imgUrlArray;
@property (readonly) NSMutableArray *imageArray;
@property (readonly) NSMutableArray *imageSizeArray;
@property (readonly) NSMutableArray *widthArray;
@property (readonly) NSMutableArray *heightArray;
@property BOOL loginAccept;

+ (instancetype)shareData;
- (void)collectionViewGetImage:(NSString *)imgUrl;
//- (void)collectionViewGetImageSize;

//- (void)loginSetName:(NSString *)username
//         setPassword:(NSString *)password
//             setBloc:(saveLogin)log;

//- (void)loginSetName:(NSString *)username
//         setPassword:(NSString *)password loginCompletion:(BOOL(^)(BOOL))completion;

- (void)loginSetName:(NSString *)username
         setPassword:(NSString *)password loginCompletion:(void(^)(BOOL isSuccess))completion;

- (void)logoutSetCompletion:(void(^)(BOOL isSuccess))completion;


- (void)signupSessionInsertUsername:(NSString *)username
                    insertPassword1:(NSString *)password1
                     isertPassword2:(NSString *)password2
                    loginCompletion:(void(^)(BOOL isSuccess))completion;

@end
