//
//  ViewController.m
//  Test02
//
//  Created by abyssinaong on 2017. 3. 2..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
<UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *point;
@property (weak, nonatomic) IBOutlet UILabel *number;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *temp;
    temp = [[UITapGestureRecognizer alloc] init];
//    temp = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    temp.delegate = self;
    [self.view addGestureRecognizer:temp];
    
//    UIImagePickerController
    
}

//- (void)handleTap:(UIGestureRecognizer *)sender{
//    
//    self.point.text = [NSString stringWithFormat:@"%lf, %lf ", [sender locationInView:self.view].x, [sender locationInView:self.view].y];
//
//    
//}

// 터치를 했을 때 카운트와 터치된 위치를 나타내는 메소드
-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    
    self.number.text = [NSString stringWithFormat:@"%ld", touch.tapCount];
    self.point.text = [NSString stringWithFormat:@"%lf,  %lf", [touch locationInView:touch.view].x, [touch locationInView:touch.view].y];
    
    
//    NSLog(@"%lf", [touch locationInView:touch.view].x);
//    NSLog(@"%lf", [touch locationInView:touch.view].y);
//    NSLog(@"%ld", touch.tapCount);
    
    return YES;
}


//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceivePress:(UIPress *)press{
//    
//        self.number.text = [NSString stringWithFormat:@"%lf", press.force];
////        self.point.text = [NSString stringWithFormat:@"%lf,  %lf", [press locationInView:press.window].x, [press locationInView:press.view].y];
//    return YES;
//}



//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
//    
//    
//    
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
