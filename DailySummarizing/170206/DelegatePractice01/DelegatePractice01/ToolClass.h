//
//  ToolClass.h
//  DelegatePractice01
//
//  Created by abyssinaong on 2017. 2. 6..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ToolClassDelegate;


@interface ToolClass : UIView

@property (weak) id<ToolClassDelegate> delegate;


@end
@protocol ToolClassDelegate <NSObject>

- (void)delegateSet:(UIButton *)sender;

@end
