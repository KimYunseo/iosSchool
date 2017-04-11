//
//  NetworkModule.m
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 16..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "NetworkModule.h"
#import "DataCenter.h"

@interface NetworkModule()

@end

@implementation NetworkModule



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
- (void)networkModuleLoginInsertUsername:(NSString *)username
                          insertPassword:(NSString *)password
                         loginCompletion:(void(^)(BOOL, NSInteger))completion
{
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURL *url = [NSURL URLWithString:[_BASIC_API stringByAppendingString:_LOGIN_ADDRESS]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    NSString *requestData = [NSString stringWithFormat:@"username=%@&password=%@", username,password];
    request.HTTPBody = [requestData dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error == nil) {
            NSHTTPURLResponse *httpRespose = (NSHTTPURLResponse *) response;
            if ((NSInteger)[httpRespose statusCode] == 200) {
                NSDictionary *responseDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
                NSString *token = [responseDic objectForKey:@"key"];
                NSLog(@"토큰 값이 들어 온다. %@", token);
                /**
                 * NSLog(@"%ld", (NSInteger)[response statusCode]); response에 상태 코드를 알기 위한것
                 */
                [[NSUserDefaults standardUserDefaults] setObject:token forKey:_KEY_TOKEN];
                [DataCenter shareData].accessToken = [[NSUserDefaults standardUserDefaults] objectForKey:_KEY_TOKEN];
                completion(YES, (NSInteger)[httpRespose statusCode]);
            } else if ((NSInteger)[httpRespose statusCode] == 400) {
                completion(NO, (NSInteger)[httpRespose statusCode]);
            } else {
                NSLog(@"%ld", (NSInteger)[httpRespose statusCode]);
                completion(NO, (NSInteger)[httpRespose statusCode]);
            }
            
        } else {
            
            NSDictionary *temp = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"로그인 에러다!! %@", [temp objectForKey:@"non_field_errors"]);

            completion(NO, 0);
        }
    }];
    [postDataTask resume];
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
- (void)networkModuleLogoutSetCompletion:(void(^)(BOOL))completion{
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *url = [NSURL URLWithString:[_BASIC_API stringByAppendingString:_LOGOUT_ADDRESS]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    NSString *requestData = [NSString stringWithFormat:@"Token %@", [[NSUserDefaults standardUserDefaults] objectForKey:_KEY_TOKEN]];
    [request setValue:requestData forHTTPHeaderField:@"Authorization"];
    
    request.HTTPBody = [@"" dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error == nil) {
            NSHTTPURLResponse *httpRespose = (NSHTTPURLResponse *) response;
            if ((NSInteger)[httpRespose statusCode] == 200) {
                [[NSUserDefaults standardUserDefaults] setObject:nil forKey:_KEY_TOKEN];
                [DataCenter shareData].accessToken = [[NSUserDefaults standardUserDefaults] objectForKey:_KEY_TOKEN];
                
                completion(NO);
            } else if ((NSInteger)[httpRespose statusCode] == 401) {
                
                completion(YES);
            } else {
                
                NSLog(@"%ld", (NSInteger)[httpRespose statusCode]);
            }
            
        } else {
            NSLog(@"로그아웃 에러다!! ");
        }
    }];
    [postDataTask resume];

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
- (void)networkModuleSignupInsertUsername:(NSString *)username
                     insertPassword1:(NSString *)password1
                     isertPassword2:(NSString *)password2
                    loginCompletion:(void(^)(BOOL))completion
{
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *url = [NSURL URLWithString:[_BASIC_API stringByAppendingString:_SIGNUP_ADDRESS]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    NSString *requestData = [NSString stringWithFormat:@"username=%@&password1=%@&password2=%@", username,password1,password2 ];
    request.HTTPBody = [requestData dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error == nil) {
            NSHTTPURLResponse *httpRespose = (NSHTTPURLResponse *) response;
            if ((NSInteger)[httpRespose statusCode] == 201) {
                NSDictionary *responseDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
                NSString *token = [responseDic objectForKey:@"key"];
                NSLog(@"토큰 값이 들어 온다. %@", token);
                /*
                 *NSLog(@"%ld", (NSInteger)[response statusCode]); response에 상태 코드를 알기 위한것
                 */
                
                [[NSUserDefaults standardUserDefaults] setObject:token forKey:_KEY_TOKEN];
                [DataCenter shareData].accessToken = [[NSUserDefaults standardUserDefaults] objectForKey:_KEY_TOKEN];
                
                
                completion(YES);
            } else if ((NSInteger)[httpRespose statusCode] == 400) {
                completion(NO);
            } else {
                
                NSLog(@"%ld", (NSInteger)[httpRespose statusCode]);
                
            }
            
        } else {
            
            NSDictionary *temp = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"로그인 에러다!! %@", [temp objectForKey:@"non_field_errors"]);
            
            completion(NO);
        }
    }];
    [postDataTask resume];
}

/**
 글과 이미지를 업로드 할 경우의 메소드.
 DataCenter에서 넘겨 받은 값을 네트워크를 통해 http 규격에 맞춰 보내는 메소드.
 
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
- (void)networkModuleMultipartfromPostCreat:(NSString *)title
                                 setContent:(NSString *)content
                                   setImage:(NSData *)imageData
                           mulitiComplition:(void(^)(BOOL))completion
{
    
    NSString *boundary = @"----------boundaryooooo";
    NSMutableData *body = [NSMutableData data];
    
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"title\"\r\n\r\n%@", title] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    
    
    
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"content\"\r\n\r\n%@", content] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    
    
    
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"img_cover\"; filename=\"image.jpg\"\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[@"Content-Type: application/octet-stream\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:imageData];
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    
    
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURL *url = [NSURL URLWithString:[_BASIC_API stringByAppendingString:_POST_ADDRESS]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    
    
    NSString *requestData = [NSString stringWithFormat:@"Token %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"Authorization"]];
    [request setValue:requestData forHTTPHeaderField:@"Authorization"];

    
    // 멀티파트 중요!!!
    NSString* MultiPartContentType = [NSString stringWithFormat:@"multipart/form-data; boundary=%@", boundary];
    [request setValue:MultiPartContentType forHTTPHeaderField: @"Content-Type"];
    request.HTTPMethod = @"POST";
    request.HTTPBody = body;
    
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error == nil) {
            NSHTTPURLResponse *httpRespose = (NSHTTPURLResponse *) response;
            if ((NSInteger)[httpRespose statusCode] == 201) {
                completion(YES);
            } else if ((NSInteger)[httpRespose statusCode] == 400) {
                completion(NO);
            } else {
                NSLog(@"%ld", (NSInteger)[httpRespose statusCode]);
            }
        } else {
            
            NSDictionary *temp = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"다른 에러다!! %@", [temp objectForKey:@"non_field_errors"]);
            
            completion(NO);
        }
    }];
    [postDataTask resume];
}

/**
 글과 이미지를 받을때 필요한 메소드
 
 *Values*
 
 `page` 페이지. 문자열 값을 받는다.
 
 `completion` block을 통해 성공여부를 받아 온다
 
 - Author:
 Yun seo
 - Version:
 0.1
 */
- (void)networkModulePostListSetPage:(NSString *)page
                      dataComplition:(void (^)(id array, BOOL isDone))complition
{
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURL *url = [NSURL URLWithString:[_BASIC_API stringByAppendingString:_POST_ADDRESS]];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    NSString *pageNum = page;
    NSString *requestData = [NSString stringWithFormat:@"page=%@", pageNum];
    
    request.HTTPBody = [requestData dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"GET";
    
    NSURLSessionDataTask *downloadTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error == nil) {
            dispatch_async(dispatch_get_main_queue(), ^{
                NSDictionary *responseDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
                NSMutableArray *resultArray = [[NSMutableArray alloc] init];
                [resultArray addObjectsFromArray:[responseDic objectForKey:@"results"]];
                complition(resultArray, YES);
            });
            
        }

    }];
    
    [downloadTask resume];
    NSLog(@"networkModulePostListSetPage");
    
}


#pragma AFNetWork

- (void)afnetworkLogin{
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURL *URL = [NSURL URLWithString:[_BASIC_API stringByAppendingString:_LOGIN_ADDRESS]];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    
    NSURL *filePath = [NSURL fileURLWithPath:@"file://path/to/image.png"];
    NSURLSessionUploadTask *uploadTask = [manager uploadTaskWithRequest:request fromFile:filePath progress:nil completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            NSLog(@"Success: %@ %@", response, responseObject);
        }
    }];
    [uploadTask resume];
    
}


@end
