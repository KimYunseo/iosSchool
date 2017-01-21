//
//  Bank.h
//  Test01
//
//  Created by abyssinaong on 2017. 1. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bank : NSObject

@property NSString *bankName;
@property NSString *bankLocation;


- (void)changeAdrresTo:(NSString *)location;



@end
