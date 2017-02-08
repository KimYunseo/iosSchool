//
//  ViewController.m
//  ScrollViewPractice01
//
//  Created by abyssinaong on 2017. 2. 7..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIScrollView *mainScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [mainScrollView setContentSize:CGSizeMake(mainScrollView.frame.size.width*3, mainScrollView.frame.size.height)];
    mainScrollView.delegate = self;
    mainScrollView.pagingEnabled = NO;
    [self.view addSubview:mainScrollView];
    
    UIView *newView[3]; // 배열 지원함!!!
    
    newView[0] = [[UIView alloc]initWithFrame:CGRectMake(0, 0,self.view.frame.size.width, self.view.frame.size.height)];
    newView[0].backgroundColor = [UIColor blackColor];
    [mainScrollView addSubview:newView[0]];
    
    newView[1] = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width, 0,self.view.frame.size.width, self.view.frame.size.height)];
    newView[1].backgroundColor = [UIColor blueColor];
    [mainScrollView addSubview:newView[1]];
    
    newView[2] = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width*2, 0,self.view.frame.size.width, self.view.frame.size.height)];
    newView[2].backgroundColor = [UIColor redColor];
    [mainScrollView addSubview:newView[2]];
    

}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    
    NSLog(@"scrollViewWillBeginDragging 실행 됨");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
