//
//  ViewController.m
//  PracticeTest01
//
//  Created by abyssinaong on 2017. 2. 10..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property NSMutableArray *insertedText;
@property UILabel *textLB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.insertedText = [[NSMutableArray alloc] init];
    
    
    UITextField *textFd = [[UITextField alloc] initWithFrame:CGRectMake(50, 80, 150, 50)];
    textFd.delegate = self;
    [self.view addSubview:textFd];
    textFd.borderStyle = UITextBorderStyleRoundedRect;
    
    
    self.textLB = [[UILabel alloc] initWithFrame:CGRectMake(50, 150, 150, 50)];
    self.textLB.textColor = [UIColor blackColor];
    
    
    
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    
    for(NSUInteger i = 0 ; i <textField.text.length; i++){
    [self.insertedText addObject:[textField.text substringWithRange:NSMakeRange(i, 1)]];
    }
    
    NSMutableArray *text = [[NSMutableArray alloc] init];
    if([textField.text isEqualToString:@""]){ // textField.text.length == 0
        [text addObject:@"값을 입력하시오."];
    }
    
    else if(textField.text.length % 2 == 0){
        NSInteger a = textField.text.length/2-1;
        NSInteger b = textField.text.length/2;
    [text addObject:self.insertedText[a]];
        [text addObject:self.insertedText[b]];
        
    } else if (textField.text.length % 2 == 1){
        NSInteger a = textField.text.length/2.0 -0.5;
        [text addObject:self.insertedText[a]];
    } 

    [self.textLB setText:[text componentsJoinedByString:@","]];
    [self.view addSubview:self.textLB];
    return YES;
}

- (NSMutableArray *)searchCenterValue:(UITextField *)string
{
    [self.insertedText addObject:string.text];
    
    
    
    return self.insertedText;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
