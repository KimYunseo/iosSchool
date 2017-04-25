//
//  CreateNewViewController.m
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 28..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "CreateNewViewController.h"

@interface CreateNewViewController ()

@end

@implementation CreateNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.navigationItem setTitle:@"New Trip 3"];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(saveTripAndDismiss:)];
    [self.navigationItem setRightBarButtonItem:rightBtn];
    
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(dismissVC:)];
    
    [self.navigationItem setLeftBarButtonItem:leftBtn];
    
    
    
    
}


- (void)saveTripAndDismiss:(UIButton *)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


- (void)dismissVC:(UIButton *)sender{
    
    [self dismissViewControllerAnimated:YES completion:nil];
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
