//
//  ViewController.m
//  LabelPractice01
//
//  Created by abyssinaong on 2017. 2. 3..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//  view의 width값과 height값을 미리 설정
    CGFloat widthInit = self.view.frame.size.width/2;
    CGFloat heigthInit = (self.view.frame.size.height-60)/3;
    
   
    //1행1열의 UIView
    UIView *viewR1C1Sub = [[UIView alloc] initWithFrame:CGRectMake(10 , 40, (widthInit*2 -30)/2, heigthInit)];
    [viewR1C1Sub setBackgroundColor:[UIColor whiteColor]];
    viewR1C1Sub.layer.borderWidth =1;
    viewR1C1Sub.layer.borderColor =[UIColor blackColor].CGColor;
    [self.view addSubview:viewR1C1Sub];
    
    //1행1열의 UIView의 sub로 UIImage를 넣음
    UIImageView *imgR1C1Sube = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, (widthInit*2 -30)/2, heigthInit*3/4)];
    imgR1C1Sube.image = [UIImage imageNamed:@"kalcas.jpg"];
    imgR1C1Sube.userInteractionEnabled = YES; // UIImageView에서는 userInteractionEnabled가 기본 NO값이다. 따라서 YES로 만들어야 한다.
    [imgR1C1Sube setContentMode:UIViewContentModeScaleAspectFit];
    [viewR1C1Sub addSubview:imgR1C1Sube];
    
    //1행1열의 UIView
    UIView *viewR1C1 = [[UIView alloc] initWithFrame:CGRectMake(10 , 40, (widthInit*2 -30)/2, heigthInit)];
    [viewR1C1 setBackgroundColor:[UIColor whiteColor]];
    viewR1C1.layer.borderWidth =1;
    viewR1C1.layer.borderColor =[UIColor blackColor].CGColor;
    [self.view addSubview:viewR1C1];
    
    //1행1열의 UIView의 sub로 UIImage를 넣음
    UIImageView *imgR1C1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, (widthInit*2 -30)/2, heigthInit*3/4)];
    imgR1C1.image = [UIImage imageNamed:@"tanatos.jpg"];
    imgR1C1.userInteractionEnabled = YES; // UIImageView에서는 userInteractionEnabled가 기본 NO값이다. 따라서 YES로 만들어야 한다.
    [imgR1C1 setContentMode:UIViewContentModeScaleAspectFit];
    [viewR1C1 addSubview:imgR1C1];
    
    [self.view insertSubview:viewR1C1 atIndex:1];
    [self.view insertSubview:viewR1C1Sub atIndex:2];

    
    UIButton *btnR1C1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btnR1C1.frame = CGRectMake(widthInit, heigthInit, (widthInit*2 -30)/2, heigthInit);
    btnR1C1.backgroundColor = [UIColor redColor];
//    btnR1C1.alpha = 0;
    [btnR1C1 setTitle:@"ㅅㄷㄴ" forState:UIControlStateNormal];
    [btnR1C1 setTitle:@"asdasd" forState:UIControlStateHighlighted];
//    [btnR1C1 setImage:nil forState:UIControlStateNormal];
//    UIControl
    [btnR1C1 addTarget:self action:@selector(changeImg:) forControlEvents:UIControlEventTouchUpInside];
    if (btnR1C1.state == UIControlStateHighlighted)
    {
        
        [self.view willRemoveSubview:imgR1C1Sube];
    }

    [self.view addSubview:btnR1C1];

}

//exchangeSubviewAtIndex

- (void)changeImg:(UIButton *)sender
{
    

    [self.view exchangeSubviewAtIndex:2 withSubviewAtIndex:1];
    
    
    
}


+ (NSString *)randomCharctorName
{
    NSString *charctorName[] ={@"cubeMoa.jpg",@"diabllo.jpg",@"jupiter.jpg",@"kalcas.jpg",@"panteaon.jpg",@"tanatos.jpg",@"midas.jpg",@"tot.jpg",@"aten.jpg",@"pennil.jpg"};
    
    NSInteger ranNum = arc4random() %10 -1 ;
    
    if (ranNum >= 10 ||ranNum <0) {
        ranNum = 9;
    }
    
    NSString *randomCharctor = charctorName[ranNum];
    NSLog(@"%@",randomCharctor);
 
    return randomCharctor;
}

-(void)test:(UIButton *) sender {
    NSLog(@"%@", [sender currentTitle]);
}

- (NSString *)randomCharctorName1:(UIButton *)sender
{
    NSString *charctorName[] ={@"cubeMoa.jpg",@"diabllo.jpg",@"jupiter.jpg",@"kalcas.jpg",@"panteaon.jpg",@"tanatos.jpg",@"midas.jpg",@"tot.jpg",@"aten.jpg",@"pennil.jpg"};
    
    NSUInteger ranNum = arc4random() %10 -1 ;
    
    if (ranNum == 10) {
        ranNum = 9;
    }
    
    NSString *randomCharctor = charctorName[ranNum];
    NSLog(@"%@",randomCharctor);
    
    return randomCharctor;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
