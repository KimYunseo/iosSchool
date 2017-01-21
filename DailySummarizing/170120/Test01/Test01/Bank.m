//
//  Bank.m
//  Test01
//
//  Created by abyssinaong on 2017. 1. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Bank.h"

@implementation Bank

- (void)changeAdrresTo:(NSString *)location{
    
    
    NSLog(@"%@은행이 %@에서 %@로 주소를 변경하였습니다.", self.bankName, self.bankLocation, location);
    self.bankLocation = location;
    
}

@end
