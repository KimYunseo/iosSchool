//
//  LoginUIView.h
//  LoginPage01
//
//  Created by abyssinaong on 2017. 2. 24..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoginUIViewDelegate;
@interface LoginUIView : UIView

@property (nonatomic, weak) id <LoginUIViewDelegate> delegate;

@property (nonatomic, weak) UITextField *inputTF;
- (instancetype)initWithFrame:(CGRect)frame
                     setArray:(NSInteger)num;
@end

@protocol LoginUIViewDelegate <NSObject>

- (void)texTranmit:(LoginUIView *)view;

@end
