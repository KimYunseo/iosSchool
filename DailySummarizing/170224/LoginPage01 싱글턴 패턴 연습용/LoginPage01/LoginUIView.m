//
//  LoginUIView.m
//  LoginPage01
//
//  Created by abyssinaong on 2017. 2. 24..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "LoginUIView.h"
#import "DataCenter.h"

@interface LoginUIView()<UITextFieldDelegate>

@property (nonatomic, weak) UILabel *titleLB;


@end

@implementation LoginUIView


- (instancetype)initWithFrame:(CGRect)frame
                       setArray:(NSInteger)num
{
    self = [super initWithFrame:frame];
    if (self) {
        [self loginCreate];
        [self frameSetting];
        [self setTitleText:num];
        
    }
    return self;
}

- (void)loginCreate{
    
    UILabel *titleLB = [[UILabel alloc] init];
    [self addSubview:titleLB];
    titleLB.textColor =[UIColor blackColor];
    titleLB.textAlignment = NSTextAlignmentRight;
    
    UITextField *inputTF = [[UITextField alloc] init];
    [self addSubview:inputTF];
    inputTF.textColor =[UIColor blackColor];
    inputTF.textAlignment = NSTextAlignmentLeft;
    inputTF.delegate = self;
    inputTF.borderStyle = UITextBorderStyleRoundedRect;
    self.titleLB = titleLB;
    self.inputTF = inputTF;
}

- (void)frameSetting{
    
    CGFloat m = self.frame.size.width;
    CGFloat h = self.frame.size.height;
    
    self.titleLB.frame = CGRectMake(0, 0, m/7, h);
    self.inputTF.frame = CGRectMake(m*2/7, 0, m*5/7, h);
}

- (void)setTitleText:(NSInteger)arrayNum{
    DataCenter *center = [[DataCenter alloc]init];
    self.titleLB.text = [center loadTitle:arrayNum];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    self.inputTF.text = textField.text;
    [self.delegate texTranmit:self];
    [textField resignFirstResponder];
    return YES;
}



@end
