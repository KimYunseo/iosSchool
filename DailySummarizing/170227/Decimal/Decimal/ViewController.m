//
//  ViewController.m
//  Decimal
//
//  Created by abyssinaong on 2017. 2. 27..
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
    
    self.inputTextField.tag = 0;
    self.inputTextField.delegate = self;
}

//리턴 값을 넣을 경우 행동하는 메소드
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField.tag == 0) {
        
        //입력된 값이 2 이상인것을 확인하는 조건문
        if ([self.inputTextField.text integerValue] >= 2) {
            NSArray *num =  [self decimalSum:[self.inputTextField.text integerValue]];
            NSString *temp = @"";
            
            for (NSInteger i = 0; i < num.count; i++) {
                NSString *space = @" ";
                temp = [temp  stringByAppendingString:num[i]];
                temp = [temp stringByAppendingString:space];
            }
            
            self.resultTextView.text = temp;
        } else {
            
            self.resultTextView.text = @"0을 초과하는 정수값을 입력하세요.";
        }
    }
    
    [self.inputTextField resignFirstResponder];
    return YES;
}

//소수를 구하는 메소드
- (NSArray *)decimalSum:(NSInteger)number {
    
    NSMutableArray *result = [[NSMutableArray alloc] init];
    //2부터 입력받은 number까지의 하나씩 올라가는 for문
    for (NSInteger i = 2; i <= number; i ++) {
        NSMutableArray *array = [[NSMutableArray alloc] init];
        //앞의 for문에서 온 i값을 이용하여 2부터 j값이 i와 같을 때까지의 값이 증가하고, i값에 증가하는 j값을 계속해서 나눠준다.
        for (NSInteger j = 2; j <= i; j ++) {
            if (i % j == 0) {
                //나머지가 0인 값이 저장된다.
                [array addObject:[NSString stringWithFormat:@"%lu", j]];
            }
        }
        //안의 for문에서 나가기 전에 array 안의 값이 한개일 경우만 0번째 인덱스만 result array에 저장된다.
        if (array.count == 1) {
            [result addObject:array[0]];
        }
    }
    
    return result;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
