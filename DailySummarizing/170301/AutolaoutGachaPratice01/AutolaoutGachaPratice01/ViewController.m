//
//  ViewController.m
//  AutolaoutGachaPratice01
//
//  Created by abyssinaong on 2017. 3. 1..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#import "DataCenter.h"

@interface ViewController ()<CustomViewDelegate>

@property (nonatomic, weak) IBOutlet UIButton *pointBtn;

@property (nonatomic, weak) IBOutlet UIButton *monetBtn;

@property (weak, nonatomic) IBOutlet UILabel *moneyLB;

@property (weak, nonatomic) IBOutlet UILabel *pointLB;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self.temp mainImgRandom];
//    [self.temp2 mainImgRandom];
//    [self.temp3 mainImgRandom];
//    [self.temp4 mainImgRandom];

    self.pointBtn.tag = 1;
    self.monetBtn.tag = 2;

    self.pointLB.text = [DataCenter shareData].point;
    self.temp.deldgate = self;
    self.temp2.deldgate = self;
    self.temp3.deldgate = self;
    self.temp4.deldgate = self;
    
}


- (IBAction)chargeMoney:(id)sender{
    
    NSInteger current = [self.moneyLB.text integerValue];
    
    current += 10000;
    
    self.moneyLB.text = [NSString stringWithFormat:@"%lu", current];
    
}

- (IBAction)changePoint:(id)sender{
    
    NSInteger current = [self.moneyLB.text integerValue];
    
    NSInteger pointInt = [self.pointLB.text integerValue];
    
    pointInt = pointInt + current/1000;
    
    [[DataCenter shareData] pointSave:[NSString stringWithFormat:@"%lu", pointInt]];
    
    NSLog(@"%@", [DataCenter shareData].point);
    
    self.pointLB.text = [DataCenter shareData].point;
    self.moneyLB.text = @"0";
    
}

- (void)minusPoint{
    
    self.pointLB.text = [DataCenter shareData].point;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
