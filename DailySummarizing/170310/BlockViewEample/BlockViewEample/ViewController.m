//
//  ViewController.m
//  BlockViewEample
//
//  Created by abyssinaong on 2017. 3. 10..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MyView *myView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    [self.myView changeLabelText:^{
//        return @"asfdaf";
//    }];
    
    
//    [self.myView changeLabelText:^NSString *{
//        return @"joo";
//    }];
    
    [self.myView testBloc:^NSString *(NSString * name) {
        return [@"test " stringByAppendingString:name];
    }];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
