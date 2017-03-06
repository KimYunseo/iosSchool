//
//  DataCenter.h
//  AutolaoutGachaPratice01
//
//  Created by abyssinaong on 2017. 3. 1..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

@property (nonatomic, readonly) NSString *point;
@property (nonatomic, readonly) NSString *money;

+ (instancetype)shareData;
- (void)pointSave:(NSString *)point;

@end
