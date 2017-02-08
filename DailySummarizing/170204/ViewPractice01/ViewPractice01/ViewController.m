//
//  ViewController.m
//  ViewPractice01
//
//  Created by abyssinaong on 2017. 2. 4..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import "ViewStructure.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UIView
    CGFloat wNum = self.view.frame.size.width;
    CGFloat hNum = self.view.frame.size.height;
//   
//    ViewStructure *mainView =[[ViewStructure alloc]initWithSetX:0 setY:0 setWidth:wNum setHeight:hNum setBorderWidth:1];
//    [mainView setBackgroundColor:[UIColor blackColor]];
//    [self.view addSubview:mainView];
//    
//    ViewStructure *setBoard =[[ViewStructure alloc]initWithSetX:0 setY:0 setWidth:wNum setHeight:hNum setBorderWidth:1];
//    [setBoard setBackgroundColor:[UIColor blackColor]];
//    [mainView addSubview:setBoard];
//    
//    
//
//    ViewStructure *subView = [[ViewStructure alloc] initWithSetX:10 setY:40 setWidth:(wNum-30)/2 setHeight:(hNum-50)/3 setBorderWidth:1];
//    [subView setBackgroundColor:[UIColor yellowColor]];
//    [setBoard addSubview:subView];
//    
//    [self.view insertSubview:setBoard atIndex:1];
//    [self.view insertSubview:subView atIndex:2];
//    
//    
//    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn.frame = CGRectMake(0, 0, subView.frame.size.width , subView.frame.size.height);
//    [btn setTitle:@"rrr" forState:UIControlStateNormal];
//    [btn setTitle:@"HAHAHA" forState:UIControlStateHighlighted];
//    [btn addTarget:self action:@selector(changeImage:) forControlEvents:UIControlEventTouchUpInside];
//    [subView addSubview:btn];
//    
//    
//    UIView *view1;
//    [ViewStructure initWithView:view1 setX:10 setY:40
//                       setWidth:100 setHeight:100
//                 setBorderWidth:1 setSuperView:mainView];
    
    
}

- (void)changeImage:(UIButton *)sender
{
    
    [self.view exchangeSubviewAtIndex:2 withSubviewAtIndex:1 ];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
