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
    
    NSString *token = @"";
    token = [[NSUserDefaults standardUserDefaults] objectForKey:@"Authorization"];
    if (token == nil) {
        [self performSegueWithIdentifier:@"LoginSegue" sender:nil];
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    NSString *token = @"";
//    token = [[NSUserDefaults standardUserDefaults] objectForKey:@"Authorization"];
//    if (token == nil) {
//        
////        UIStoryboard *loginStoryboard = [UIStoryboard storyboardWithName:@"Login" bundle:nil];
////        LoginViewController *loginVC = [loginStoryboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
//////        [self presentViewController:loginVC animated:YES completion:nil];
////        [self pushViewController:loginVC animated:YES];
//    }
    
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
