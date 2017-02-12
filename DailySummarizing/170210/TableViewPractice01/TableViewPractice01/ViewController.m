//
//  ViewController.m
//  TableViewPractice01
//
//  Created by abyssinaong on 2017. 2. 10..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITableView *mainView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height*2) style:UITableViewStylePlain];
    mainView.backgroundColor =[UIColor blackColor];
    [self add]
//    mainView.backgroundView
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
