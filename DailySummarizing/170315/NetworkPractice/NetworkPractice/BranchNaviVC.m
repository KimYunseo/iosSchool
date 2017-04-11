//
//  BranchNaviVC.m
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 16..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "BranchNaviVC.h"
#import "LoginViewController.h"

@interface BranchNaviVC ()

@end

@implementation BranchNaviVC

-(void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    /*
    // NSUserDefaults에 Authorization에 대한 값이 없을 경우 로그인 페이지록 간다.
    NSString *token = @"";
    token = [[NSUserDefaults standardUserDefaults] objectForKey:@"Authorization"];
    //nil 이던 null이던 int값으로 바꾸면 0
    if ((NSInteger)token == 0) {
        [self performSegueWithIdentifier:@"LoginSegue" sender:nil];
    }
     */
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
