//
//  ViewController.m
//  stairs01
//
//  Created by abyssinaong on 2017. 2. 17..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@property UITextField *mainTF;
@property UILabel *resultLB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
     계단 알고리즘
     계단은 한 칸 또는 두 칸씩만 올라갈 수 있다.
     이때의 경우의 수
    */
    
    //숫자를 받는 메인 텍스트 필드
    UITextField *mainTF = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width/5, 100, self.view.frame.size.width*3/5, 50)];
    //border style 설정
    mainTF.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:mainTF];
    //델리게이트 설정
    mainTF.delegate = self;
    //중앙정렬
    mainTF.textAlignment = NSTextAlignmentCenter;
    //정의된 프로퍼티에 텍스트필드를 넣는다.(weak로 설정했을 시 참조)
    self.mainTF = mainTF;
    
    
    //결과를 받는 라벨
    UILabel *resultLB = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/5, 200, self.view.frame.size.width*3/5, 50)];
    //border line의 두께 설정
    resultLB.layer.borderWidth =1;
    //border line의 색 설정
    resultLB.layer.borderColor = [UIColor blackColor].CGColor;
    //textColor 설정
    resultLB.textColor = [UIColor blackColor];
    //결과값 중앙정렬
    resultLB.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:resultLB];
    //정의된 프로퍼티에 라벨을 넣는다.
    self.resultLB = resultLB;
    
//    NSLog(@"%lu", [self stairsCalculrate:6]);
    
}


// return을 눌렀을 경우 return이 눌리는 행동과 구현된 메소드에 있는 내용에 따라 ViewController가 행동하는 메소드가 실행된다. 델리게이트 옵셔널에 정의된 내용
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    NSInteger num = [self.mainTF.text integerValue];
    NSString *number = [NSString stringWithFormat:@"결과 %lu",[self stairsCalculrate:num]];
    self.resultLB.text = number;
    [self.mainTF resignFirstResponder];
    return YES;
    
}

// 계단 알고리즘에 대한 메소드
// 1, 2, 3, 5, 8, 13 ... 형식으로 값이 나타나므로 피보나치 수열에 해당된다. 이를 재귀함수로 구현하였다.
- (NSInteger)stairsCalculrate:(NSInteger)number
{
    if (number == 1){
        return 1;
    } else if ( number == 2 ) {
        return 2;
    } else {
        return [self stairsCalculrate:number-1] +[self stairsCalculrate:number-2];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
