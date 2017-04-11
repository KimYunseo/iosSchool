//
//  ViewController.m
//  Segue
//
//  Created by abyssinaong on 2017. 3. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)modalBtnAction:(id)sender {
    
    [self performSegueWithIdentifier:@"Showsegue" sender:nil];
    
}

- (IBAction)unwindAction:(UIStoryboardSegue *)sender{
    
}

- (void)unwindForSegue:(UIStoryboardSegue *)unwindSegue towardsViewController:(UIViewController *)subsequentVC {
    
    
}

@end
