//
//  DataCenter.h
//  DataPlist01
//
//  Created by abyssinaong on 2017. 3. 3..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject


@property (readonly) NSMutableDictionary *dic;
@property (readonly) NSMutableArray *friend;

+ (instancetype)shareData;
- (void)friendSave:(NSMutableDictionary *)data;

@end
