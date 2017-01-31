//
//  ToolBox.h
//  practiceAll01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface ToolBox : NSObject

+ (BOOL)checkDeveloper:(Person *)p1;
+ (BOOL)checkSales:(Person *)p1;

@end
