//
//  DataCenter.m
//  AutolaoutGachaPratice01
//
//  Created by abyssinaong on 2017. 3. 1..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "DataCenter.h"
@interface DataCenter()
@property NSString *point;
@property NSString *money;

@end

@implementation DataCenter

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
        [self pointInit];
    }
    return self;
}

//point를 최초 0으로 만들어 준다.
- (void)pointInit{
    
    self.point = @"0";
    
}

// 받은 포인트 값을 self.point에 넣는다.
- (void)pointSave:(NSString *)point{
 
    self.point = point;
    
}



@end
