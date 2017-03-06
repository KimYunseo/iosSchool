//
//  ViewController.m
//  AlgoPractice01
//
//  Created by abyssinaong on 2017. 2. 21..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *fristNumber;
@property (weak, nonatomic) IBOutlet UITextField *secondNumber;
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.fristNumber.delegate = self;
    self.secondNumber.delegate = self;
    self.fristNumber.tag = 0;
    self.secondNumber.tag = 1;
    
//    [self greatestCommonDivisorSetFirstNum:18 setSecondNum:12];
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField.tag == 0) {
        [self.fristNumber resignFirstResponder];
        [self.secondNumber becomeFirstResponder];
    } else {
        
        [self greatestCommonDivisorSetFirstNum:[self.fristNumber.text integerValue] setSecondNum:[self.secondNumber.text integerValue]];
        [self.secondNumber resignFirstResponder];
    }
    
    return YES;
}


//최소 공배수, 최대공약수 구하는 메소드
- (void)greatestCommonDivisorSetFirstNum:(NSUInteger)firstNum
                            setSecondNum:(NSUInteger)secondNum {
    
    NSMutableArray *array= [[NSMutableArray alloc]init];
    NSMutableArray *array01 = [[NSMutableArray alloc] init];
    
    if(firstNum < secondNum) {
        //최소공배수를 구하는 for문
        for (NSInteger i = 2; i<= firstNum; i++) {
                if ((firstNum % i == 0) && (secondNum % i == 0)) {
                    [array addObject:[NSString stringWithFormat:@"%lu", i]];
            }
        }
        //최대 공약수를 구하는 메소드
        for (NSInteger i = 1; i<= firstNum; i++) {
            
            for (NSInteger j = 1; j <= secondNum; j++) {
                if (firstNum * i == secondNum * j) {
                    [array01 addObject:[NSString stringWithFormat:@"%lu", firstNum * i]];
                }
            }
        }
    } else { //firstNum > secondNum 일 경우 실행
        
        for (NSInteger i = 2; i<= secondNum; i++) {
            if ((firstNum % i == 0) && (secondNum % i == 0)) {
                [array addObject:[NSString stringWithFormat:@"%lu", i]];
            }
        }
        for (NSInteger i = 1; i<= secondNum; i++) {
            
            for (NSInteger j = 1; j <= secondNum; j++) {
                if (firstNum * i == secondNum * j) {
                    [array01 addObject:[NSString stringWithFormat:@"%lu", secondNum * j]];
                }
            }
        }
    }
    
    NSString *num = [[NSString stringWithFormat:@"%@", array[array.count-1]] stringByAppendingString:@", "];
    num = [num stringByAppendingString:[NSString stringWithFormat:@"%@", array01[0]]];
    
    self.resultTextView.text = num;

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
