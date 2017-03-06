//
//  ViewController.m
//  ScreenTransitionPractice03
//
//  Created by abyssinaong on 2017. 2. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#import "SecondViewController.h"

@interface ViewController ()<CustomViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CustomView *mainView = [[CustomView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:mainView];
    mainView.delegate = self;
    
}

- (void)willTouchUpInside{
    
    NSLog(@"gkkgkgkgk");
    
    SecondViewController *sVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    [self presentViewController:sVC animated:YES completion:nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
