//
//  CustomView.h
//  SceenTransition02
//
//  Created by abyssinaong on 2017. 2. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomViewDelegate;

@interface CustomView : UIView

@property (nonatomic, weak) id <CustomViewDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame;

@end

@protocol CustomViewDelegate <NSObject>

- (void)willTouchButton;

@end
