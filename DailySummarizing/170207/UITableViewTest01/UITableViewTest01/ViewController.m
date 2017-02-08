//
//  ViewController.m
//  UITableViewTest01
//
//  Created by abyssinaong on 2017. 2. 7..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITableView *mainTB = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height*2) style:UITableViewStyleGrouped];
    
    mainTB.backgroundColor = [UIColor grayColor];
    [self.view addSubview:mainTB];
    
    UIView *view01 = [[UIView alloc]initWithFrame:CGRectMake(0, 5, self.view.frame.size.width, 50)];
    view01.backgroundColor =[UIColor blackColor];
    [mainTB addSubview:view01];
    
    UIView *view03 = [[UIView alloc]initWithFrame:CGRectMake(0, 55, self.view.frame.size.width, 50)];
    view03.backgroundColor =[UIColor blueColor];
    [mainTB addSubview:view03];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
