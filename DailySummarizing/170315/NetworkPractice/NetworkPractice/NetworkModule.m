//
//  NetworkModule.m
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 16..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "NetworkModule.h"

@interface NetworkModule()



@end

@implementation NetworkModule

- (void)loginSessionInsertUsername:(NSString *)username
                         insertPassword:(NSString *)password loginCompletion:(void(^)(BOOL))completion
                           
{
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *url = [NSURL URLWithString:[basicAPI stringByAppendingString:loginAdress]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    
    NSString *requestData = [NSString stringWithFormat:@"username=%@&password=%@", username,password];
    request.HTTPBody = [requestData dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error == nil) {
            NSDictionary *responseDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSString *token = [responseDic objectForKey:@"key"];
            NSLog(@"토큰 값이 들어 온다. %@", token);
            [[NSUserDefaults standardUserDefaults] setObject:token forKey:@"Authorization"];

            completion(YES);
            
        } else {
            
            NSDictionary *temp = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"로그인 에러다!! %@", [temp objectForKey:@"non_field_errors"]);

            completion(NO);
            
        }
        
    }];
    
    [postDataTask resume];
    
//    return self.loginBlock;
}

- (void)logoutSessionSetCompletion:(void(^)(BOOL))completion{
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *url = [NSURL URLWithString:[basicAPI stringByAppendingString:logoutAddress]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    
    NSString *requestData = [NSString stringWithFormat:@"Token %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"Authorization"]];
    
    [request setValue:requestData forHTTPHeaderField:@"Authorization"];
//    request.HTTPBody = [requestData dataUsingEncoding:NSUTF8StringEncoding];
    
    request.HTTPBody = [@"" dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error == nil) {

            [[NSUserDefaults standardUserDefaults] setObject:nil forKey:@"Authorization"];
            
            completion(NO);
            
        } else {
            
            NSLog(@"로그아웃 에러다!! ");
            
//            completion(NO);
        }
    }];
    [postDataTask resume];

}


- (void)signupSessionInsertUsername:(NSString *)username
                     insertPassword1:(NSString *)password1
                     isertPassword2:(NSString *)password2
                    loginCompletion:(void(^)(BOOL))completion{
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *url = [NSURL URLWithString:[basicAPI stringByAppendingString:loginAdress]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    
    NSString *requestData = [NSString stringWithFormat:@"username=%@&password1=%@&password2=%@", username,password1,password2 ];
    request.HTTPBody = [requestData dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error == nil) {
            NSDictionary *responseDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSString *token = [responseDic objectForKey:@"key"];
            NSLog(@"토큰 값이 들어 온다. %@", token);
            [[NSUserDefaults standardUserDefaults] setObject:token forKey:@"Authorization"];
            
            completion(YES);
            
        } else {
            
            NSDictionary *temp = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"로그인 에러다!! %@", [temp objectForKey:@"non_field_errors"]);
            
            completion(NO);
            
        }
        
    }];
    
    [postDataTask resume];
    
    
}

@end
