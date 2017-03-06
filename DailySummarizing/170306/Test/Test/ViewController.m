//
//  ViewController.m
//  Test
//
//  Created by abyssinaong on 2017. 3. 6..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated{
    
    NSLog(@"viewDidAppear");
}

-(void)viewWillLayoutSubviews{
    
    NSLog(@"viewWillLayoutSubviews");
    
}

- (void)viewDidLayoutSubviews{
    
    NSLog(@"viewDidLayoutSubviews");
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
