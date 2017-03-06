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

- (void)pointInit{
    
    self.point = @"0";
    
}

- (void)pointSave:(NSString *)point{
 
    self.point = point;
    
}



@end
