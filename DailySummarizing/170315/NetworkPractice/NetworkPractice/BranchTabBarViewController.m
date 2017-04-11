//
//  BranchTabBarViewController.m
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 21..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "BranchTabBarViewController.h"
#import "DataCenter.h"
#import "LoginNavi.h"
@interface BranchTabBarViewController ()

@end

@implementation BranchTabBarViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    

    
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:NO];
    
    if ([DataCenter shareData].accessToken == nil) {
        
        NSLog(@"[DataCenter shareData].accessToken %@", [DataCenter shareData].accessToken);
        //[self performSegueWithIdentifier:@"LoginSegue" sender:self];
        UIStoryboard *loginStoryboard = [UIStoryboard storyboardWithName:@"Login" bundle:nil];
        UINavigationController *recordNavigationController = (UINavigationController *)[loginStoryboard instantiateViewControllerWithIdentifier:@"LoginNavi"];
        [self presentViewController:recordNavigationController animated:YES completion:nil];
        
    }
    
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
