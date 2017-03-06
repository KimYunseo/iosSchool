//
//  CustomView.m
//  NavigationPractice01
//
//  Created by abyssinaong on 2017. 2. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "CustomView.h"
//#import "SecondViewController.h"

@interface CustomView()<UITextFieldDelegate>


@property UILabel *titleView;
@property UILabel *idLB;
@property UILabel *pwLB;
@property UITextField *idField;
@property UITextField *pwField;
@property UIButton *signupBtn;
@property SEL touchSelctor;

@end

@implementation CustomView

- (instancetype)initWithSelector:(SEL)onTouchSelector fromVC:(UIViewController *)vc {
    self = [super init];
    
    if (self) {
        
        [self createView:onTouchSelector fromVC:vc];
        [self frameSetting];
        
//        self.touchSelctor = onTouchSelector;
        
    }
 
    return self;
}

- (void)createView:(SEL)button fromVC:(UIViewController *)vc{
    
    UILabel *titleView = [[UILabel alloc] init];
    [self addSubview:titleView];
    self.titleView = titleView;
    
    UILabel *idLB = [[UILabel alloc] init];
    [self addSubview:idLB];
    self.idLB = idLB;
    
    UILabel *pwLB =[[UILabel alloc] init];
    [self addSubview:pwLB];
    self.pwLB = pwLB;
    
    UITextField *idField = [[UITextField alloc] init];
    [self addSubview:idField];
    self.idField = idField;
    idField.delegate = self;
    
    UITextField *pwField = [[UITextField alloc] init];
    [self addSubview:pwField];
    self.pwField = pwField;
    pwField.delegate = self;
    
    UIButton *signupBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:signupBtn];
    self.signupBtn = signupBtn;
    
    [signupBtn addTarget:vc  action:button forControlEvents:UIControlEventTouchUpInside];
}

- (void)layoutSubviews{
    
    [self frameSetting];
    
}

- (void)frameSetting{
    CGFloat offsetWidth = self.frame.size.width;
    CGFloat offsetHeight = self.frame.size.height;
    CGFloat offsetX = offsetWidth/5;
    CGFloat offsetY = offsetHeight/12;
    
    self.titleView.frame = CGRectMake(offsetX, offsetY*2, offsetX*3, offsetY);
    self.titleView.textAlignment = NSTextAlignmentCenter;
    self.titleView.text = @"MY LOGIN PAGE";
    self.titleView.textColor = [UIColor blackColor];
    
    self.idLB.frame = CGRectMake(offsetX, offsetY*4, offsetX, offsetY);
    self.idLB.text = @"ID :";
    self.idLB.textColor = [UIColor blackColor];
    
    self.idField.frame = CGRectMake(offsetX*2+5, offsetY*4, offsetX*2, offsetY);
    self.idField.borderStyle = UITextBorderStyleRoundedRect;
    
    self.pwLB.frame = CGRectMake(offsetX, offsetY*5+5, offsetX, offsetY);
    self.pwLB.text = @"PW :";
    self.pwLB.textColor = [UIColor blackColor];

    self.pwField.frame = CGRectMake(offsetX*2+5, offsetY*5+5, offsetX*2, offsetY);
    self.pwField.borderStyle = UITextBorderStyleRoundedRect;
    
    
    self.signupBtn.frame = CGRectMake(offsetX*3, offsetY*6+10, offsetX, offsetY);
    [self.signupBtn setTitle:@"Sign Up" forState:UIControlStateNormal];
    [self.signupBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField == self.idField){
    
    [self.idField resignFirstResponder];
    [self.pwField becomeFirstResponder];
    } else {
        
        [self.pwField resignFirstResponder];
    }
    
    return YES;
}

//- (void)nextPage:(UIButton *)sender{
//    
//    [self ];
//    
//}



@end
