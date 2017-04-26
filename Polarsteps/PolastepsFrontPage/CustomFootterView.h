//
//  CustomFootterView.h
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 28..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomFootterViewDelegate;

@interface CustomFootterView : UIView

@property (nonatomic, weak) id <CustomFootterViewDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame
                     setStyle:(NSInteger)num;

@end

@protocol CustomFootterViewDelegate <NSObject>

- (void)presentVC;

@end
