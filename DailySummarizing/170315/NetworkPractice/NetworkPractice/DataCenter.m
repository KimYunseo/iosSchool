//
//  DataCenter.m
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 15..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "DataCenter.h"


@interface DataCenter()

@property NetworkModule *network;

@end

@implementation DataCenter

/**
 싱글톤 패턴을 위한 메소드.
 
 *Values*
 
 - Author:
 Yun seo
 - Version:
 0.1
 */
+ (instancetype)shareData{
    static DataCenter *data;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        data = [[DataCenter alloc] init];
    });
    
    return data;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self datacenterPropertyInit];
    }
    return self;
}

//프로퍼티 초기화용 메소드
- (void)datacenterPropertyInit{

    self.network = [[NetworkModule alloc] init];
    self.postDataArray = [[NSMutableArray alloc] init];
    self.accessToken = [[NSUserDefaults standardUserDefaults] objectForKey:_KEY_TOKEN];
    
}

/**
 로그인 할 경우의 메소드.
 
 *Values*
 
 `username` 사용자 ID의 문자열 값을 받는다.
 
 `password` 사용자 Password의 문자열 값을 받는다.
 
 `completion` block을 통해 로그인 성공여부를 받아 온다
 
 - Author:
 Yun seo
 - Version:
 0.1
 */
- (void)dataCenterLoginSetName:(NSString *)username
         setPassword:(NSString *)password loginCompletion:(void(^)(BOOL isSuccess, NSInteger errorCode))completion
{
    [self.network networkModuleLoginInsertUsername:username insertPassword:password loginCompletion:completion];
}

/**
 로그아웃 할 경우의 메소드.
 
 *Values*

 `completion` block을 통해 성공여부를 받아 온다
 
 - Author:
 Yun seo
 - Version:
 0.1
 */
- (void)dataCenterLogoutSetCompletion:(void(^)(BOOL isSuccess))completion{
    
    [self.network networkModuleLogoutSetCompletion:completion];
    
}

/**
 회원가입을 할 경우의 메소드.
 
 *Values*
 
 `username` 사용자 ID의 문자열 값을 받는다.
 
 `password1` 사용자 Password1의 문자열 값을 받는다.
 
 `password2` 사용자 Password2의 문자열 값을 받는다. Password1의 값을 확인하기 위한것이다.
 
 `completion` block을 통해 성공여부를 받아 온다
 
 - Author:
 Yun seo
 - Version:
 0.1
 */
- (void)dataCenterSignupInsertUsername:(NSString *)username
                    insertPassword1:(NSString *)password1
                     isertPassword2:(NSString *)password2
                    loginCompletion:(void(^)(BOOL isSuccess))completion
{
    [self.network networkModuleSignupInsertUsername:username insertPassword1:password1 isertPassword2:password2 loginCompletion:completion];
}


/**
 글과 이미지를 업로드 할 경우의 메소드.
 
 *Values*
 
 `title` 제목. 문자열 값을 받는다.
 
 `content` 본문, 문자열 값을 받는다.
 
 `image` 이미지. UIImage를 받는다. 해당 메소드 내에서 NSData로 바뀐다.
 
 `completion` block을 통해 성공여부를 받아 온다
 
 - Author:
 Yun seo
 - Version:
 0.1
 */
- (void)dataCenterMultipartInsert:(NSString *)title
                    insertContent:(NSString *)content
                      insertImage:(UIImage *)image
                  multiComplition:(void(^)(BOOL isSuccess))complition
{
    NSData *imageData = UIImageJPEGRepresentation(image, 0.1);
    
    [self.network networkModuleMultipartfromPostCreat:title setContent:content setImage:imageData mulitiComplition:complition];
    
}

/**
 글과 이미지를 가져올 경우의 메소드.
 
 *Values*
 
 
 - Author:
 Yun seo
 - Version:
 0.1
 */
- (void)dataCenterSetContent{
    
    [self.network networkModulePostListSetPage:@"1" dataComplition:^(id array, BOOL isDone) {
        for (NSDictionary *dic in array) {
            
            PostData *temp = [[PostData alloc] initWithPost:dic];
            [self.postDataArray addObject:temp];
        }
        
        if (isDone) {
            [[NSNotificationCenter defaultCenter] postNotificationName:@"PostList" object:nil];
            NSLog(@"NSNotificationCenter");
        }
        
    }];
}


@end
