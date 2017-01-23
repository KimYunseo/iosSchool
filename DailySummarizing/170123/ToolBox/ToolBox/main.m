//
//  main.m
//  ToolBox
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToolBox.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        CGFloat a;
        scanf("%lf", &a);
        NSLog(@"%0.2lf인치를 %0.2lf",a, [ToolBox inchToCm:a]);
        NSLog(@"%lf",[ToolBox cmToInch:5]);
        
        NSLog(@"%lf",[ToolBox mTp:30]);
        NSLog(@"%lf",[ToolBox pTm:20]);
        
        NSLog(@"%lf",[ToolBox fahrenheitToCentigrade:100.5]);
        NSLog(@"%lf",[ToolBox centigradeToFahrenheit:36.5]);
        
    }
    return 0;
}


