//
//  DataCenter.h
//  PlistPractice
//
//  Created by abyssinaong on 2017. 3. 5..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)shareData;
- (void)saveID:(NSString *)idText
        savePW:(NSString *)pwText;
- (BOOL)findID:(NSString *)idText;

- (BOOL)findID:(NSString *)idText
        findPW:(NSString *)pwText;

@end
