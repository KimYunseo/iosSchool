//
//  ViewController.m
//  Test01
//
//  Created by abyssinaong on 2017. 3. 2..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import "CustomAlertViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 100, 100, 50);
    [btn setTitle:@"Alert" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self  action:@selector(alertAction:) forControlEvents:UIControlEventTouchUpInside];

    
    
    
    
    
}


- (void)alertAction:(UIButton *)sender{
    UIAlertController *temp = [UIAlertController alertControllerWithTitle:@"test" message:@"test test test!!!" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"버트이름" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"gkgkgkgkkgkg");
    }];
    
    UIAlertAction *cancelfAction = [UIAlertAction actionWithTitle:@"버트이름" style:UIAlertActionStyleCancel handler:nil];
    
    [temp addAction:okAction];
    [temp addAction:cancelfAction];
    
    [self presentViewController:temp animated:YES completion:nil];
//    UIGestureRecognizer
//    UITapGestureRecognizer
//    UIPinchGestureRecognizer
//    UIRotationGestureRecognizer
//    UISwipeGestureRecognizer
    
}

- (IBAction)actionSheet:(id)sender{
    
//    UIAlertController *temp = [UIAlertController alertControllerWithTitle:@"test" message:@"test test test!!!" preferredStyle:UIAlertControllerStyleActionSheet];
//    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"버트이름" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        NSLog(@"gkgkgkgkkgkg");
//    }];
//    
//    UIAlertAction *cancelfAction = [UIAlertAction actionWithTitle:@"버트이름" style:UIAlertActionStyleCancel handler:nil];
//    
//    [temp addAction:okAction];
//    [temp addAction:cancelfAction];
//    
//    [self presentViewController:temp animated:YES completion:nil];
    
//    CustomAlertViewController *temp = [self.storyboard instantiateViewControllerWithIdentifier:@"CustomAlertViewController"];
//    
//    [self addChildViewController:temp];
//    temp.view.backgroundColor = [UIColor colorWithRed:150.f/255 green:150.f/255 blue:150.f/255 alpha:0.8];
//    temp.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
//    temp.view.alpha = 0;
//    [self.view addSubview:temp.view];
//    [UIView animateWithDuration:0.3 animations:^{
//        temp.view.alpha = 1;
//    }];
    
    CustomAlertViewController *temp = [self.storyboard instantiateViewControllerWithIdentifier:@"CustomAlertViewController"];
    [self addChildViewController:temp];
    temp.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    temp.view.alpha = 0;
    [self.view addSubview:temp.view];
    [UIView animateWithDuration:0.2 animations:^{
        temp.view.alpha = 1;
    }];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
