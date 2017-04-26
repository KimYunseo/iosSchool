//
//  CustomFootterView.m
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 28..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "CustomFootterView.h"


@interface CustomFootterView()
@property (nonatomic, weak) UIView *bottomView;
@property (nonatomic, weak) UILabel *symbolLB;
@property (nonatomic, weak) UILabel *explainLB;
@property (nonatomic, weak) UIButton *presentBtn;

@end

@implementation CustomFootterView

- (instancetype)initWithFrame:(CGRect)frame
                     setStyle:(NSInteger)num
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createView:num];
        [self frameSetting:num];
        
    }
    return self;
}


- (void)createView:(NSInteger)num {
    
    UILabel *explainLB = [[UILabel alloc] init];
    self.explainLB = explainLB;
    
    UIButton *presentBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.presentBtn = presentBtn;
    [presentBtn addTarget:self  action:@selector(presentViewControll:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIView *bottomView = [[UIView alloc] init];
    self.bottomView = bottomView;
    
    
    UILabel *symbolLB =[[UILabel alloc] init];
    self.symbolLB = symbolLB;
    
    if (num == 0) {
        [self addSubview:explainLB];
        [self addSubview:presentBtn];
        
    } else {
        [self addSubview:bottomView];
        [bottomView addSubview:symbolLB];
        [bottomView addSubview:explainLB];
        [bottomView addSubview:presentBtn];
        
        
    }
    
}

- (void)frameSetting:(NSInteger)num {
    if (num == 0) {
        self.explainLB.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height/2);
        self.explainLB.text = @"Start your travel adventures now\n by adding a past, current or future trip";
        self.explainLB.textAlignment = NSTextAlignmentCenter;
        self.explainLB.numberOfLines = 2;
        self.explainLB.textColor = [UIColor darkGrayColor];
        self.presentBtn.frame = CGRectMake(50, self.frame.size.height/2, self.frame.size.width-100, self.frame.size.height/2 - 2);
        [self.presentBtn setTitle:@"+ Create a trip" forState:UIControlStateNormal];
        [self.presentBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        self.presentBtn.backgroundColor = [UIColor colorWithRed:189.0/255 green:38.0/255 blue:79.0/255 alpha:1];
        
        
        
    } else {
        
        self.bottomView.frame = CGRectMake(5, 5, self.frame.size.width -10, self.frame.size.height-10);
        self.bottomView.layer.borderWidth = 1;
        self.symbolLB.frame = CGRectMake(0, 0, 30, self.bottomView.frame.size.height);
        self.symbolLB.text = @"+";
        self.symbolLB.textAlignment = NSTextAlignmentRight;
        self.symbolLB.textColor = [UIColor redColor];
        self.explainLB.frame = CGRectMake(self.symbolLB.frame.size.width+10, 0, self.bottomView.frame.size.width - (self.symbolLB.frame.size.width+10), self.bottomView.frame.size.height);
        self.explainLB.text = @"Add a past, current or future trip";
        self.explainLB.textColor = [UIColor darkGrayColor];
        self.presentBtn.frame = CGRectMake(0, 0, self.bottomView.frame.size.width, self.bottomView.frame.size.height);
        
    }
    
}

- (void)presentViewControll:(UIButton *)sender {
    
    [self.delegate presentVC];
    
}




@end
