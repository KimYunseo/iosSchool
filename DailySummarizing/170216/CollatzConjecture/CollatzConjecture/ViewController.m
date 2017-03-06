//
//  ViewController.m
//  CollatzConjecture
//
//  Created by abyssinaong on 2017. 2. 16..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate, UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //짝수이면 2로 나눔
    
    //홀수이면 3을 곱하고 1을 더함
    
    
    // 앞의 두 과정을 최종결과가 1이 될때 까지 반복
    
//    NSLog(@"%ld",[self collatzArray:@"3"]);
//    NSLog(@"%ld",[self collatzCount:@"3"]);
    self.inputTextField.delegate = self;
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    if ([self.inputTextField.text integerValue] >= 1) {
        NSInteger num = [self collatzCount:self.inputTextField.text];
        
        
        NSString *temp = [NSString stringWithFormat:@"총 %ld 번을 반복한다.", num];
        
        self.resultTextView.text = temp;
    } else {
        
        self.resultTextView.text = @"0이 아닌 양수 값을 입력하세요.";
        
    }
    [self.inputTextField resignFirstResponder];
    return YES;
}

//array를 사용한 방법
- (NSInteger)collatzArray:(NSString *)number
{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    [array addObject:number];
    NSInteger num = 0;
    NSInteger result = 0;
    while ([array[array.count-1] integerValue] != 1) {
        if([array[array.count-1] integerValue] % 2 == 0)
        {
            num = [array[array.count-1] integerValue] / 2;
            [array addObject:[NSString stringWithFormat:@"%lu", num]];
            
        }
        else {
            num = [array[array.count-1] integerValue ] *3 + 1;
            [array addObject:[NSString stringWithFormat:@"%lu", num]];
        }

        result = array.count;
    }
    if(result-1 <= 500) return result-1;
    else return -1;
}

//array를 사용하지 않고 하는 방법
- (NSInteger)collatzCount:(NSString *)number
{
    NSInteger num = [number integerValue];
    NSInteger result = 0;
    while (num !=1) {
        if (num % 2 == 0) {
            num = num / 2;
        }
        else
        {
            num = num * 3 + 1;
        }
        result ++;
    }
    if (result <= 500) return result;
    else return -1;
}

//- (NSInteger)collatzReco:(NSInteger)number
//{
//
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
