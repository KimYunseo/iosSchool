//
//  DataCenter.m
//  LoginPage01
//
//  Created by abyssinaong on 2017. 2. 24..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "DataCenter.h"
@interface DataCenter()

@property (nonatomic , strong)NSArray *titleArray;
@property (nonatomic , strong)NSArray *btnArray;



@end

@implementation DataCenter


+ (instancetype)shareDate{
    
    static DataCenter *dataCenter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[self alloc] init];
    });
    
    return dataCenter;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setDefaultData];
    }
    return self;
}

- (void)setDefaultData{
    
    self.titleArray = @[@"ID", @"PW", @"RE_PW"];
    
    self.btnArray = @[@"Sign Up", @"Login", @"Cancel", @"Confrim"];
    
}

- (NSString *)loadTitle:(NSInteger)arrayNum{
    return self.titleArray[arrayNum];
}


- (NSString *)loadBtnArray:(NSInteger)arrayNum{
    
    return self.btnArray[arrayNum];
}


@end
