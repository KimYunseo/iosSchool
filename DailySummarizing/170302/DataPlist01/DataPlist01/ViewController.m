//
//  ViewController.m
//  DataPlist01
//
//  Created by abyssinaong on 2017. 3. 3..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image01;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"];
    
    NSDictionary *temp = [NSDictionary dictionaryWithContentsOfFile:path];
    
    NSLog(@"%@", [temp objectForKey:@"friend"] );

    self.image01.image = [UIImage imageNamed:@"Image"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
