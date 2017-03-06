//
//  CustomView.h
//  AutolaoutGachaPratice01
//
//  Created by abyssinaong on 2017. 3. 1..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataCenter.h"

@protocol CustomViewDelegate;

@interface CustomView : UIView

@property (nonatomic, weak) id <CustomViewDelegate> deldgate;
@property (nonatomic, weak) IBOutlet UIImageView *mainImg;
@property (nonatomic, weak) IBOutlet UIButton *hpBtn;
@property (nonatomic, weak) IBOutlet UILabel *hpLB;
@property (nonatomic, weak) IBOutlet UIButton *strBtn;
@property (nonatomic, weak) IBOutlet UILabel *strLB;
@property (nonatomic, weak) IBOutlet UIButton *defBtn;
@property (nonatomic, weak) IBOutlet UILabel *defLB;

-(instancetype)initWithCoder:(NSCoder *)aDecoder;
- (void)hoho;

- (void)mainImgRandom;

@end

@protocol CustomViewDelegate <NSObject>

- (void)minusPoint;

@end
