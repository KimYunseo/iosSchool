//
//  ViewController.m
//  DelegatePractice01
//
//  Created by abyssinaong on 2017. 2. 6..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import "ToolClass.h"
//@protocol ToolClassDelegate;

@interface ViewController ()<ToolClassDelegate>
@property UILabel *myLabel01;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    ToolClass *myView01 = [[ToolClass alloc]initWithFrame:CGRectMake(40, 40, 100, 100)];
    
    myView01.delegate = self;
    ToolClass *myView02 = [[ToolClass alloc]initWithFrame:CGRectMake(200, 40, 100, 100)];
    
    myView02.delegate = self;
    self.myLabel01 = [[UILabel alloc] initWithFrame:CGRectMake(40, 200, 100, 100)];
    [self.myLabel01 setText:@"gkgkgk"];
    
    
    [self.view addSubview:myView01];
    [self.view addSubview:myView02];
    [self.view addSubview:self.myLabel01];
    
}

- (void)delegateSet:(UIButton *)sender{
    
    self.myLabel01.text = sender.titleLabel.text;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
