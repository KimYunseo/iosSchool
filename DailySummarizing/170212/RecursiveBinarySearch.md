Recursive Binary Search
======


1.이진탐색 정의

* 이진탐색은 오름차순으로 정렬된 리스트에서 특정한 값의 위치를 찾는 알고리즘이다.

2.공부한 이유

* 재귀함수에 익숙해지기 위해 이 알고리즘을 공부하였다.

![이진탐색](https://github.com/KimYunseo/iosSchool/blob/master/DailySummarizing/170212/binarySearching.gif)

ViewController.m

```objc

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property UIView *mainView;
@property UITextField *mainTextField;
@property UITextField *secondTextField;
@property UILabel *resultLB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //기본 너비와 높이를 NSInteger 변수에 넣음
    NSInteger widthNum = self.view.frame.size.width;
    NSInteger heightNum = self.view.frame.size.height;
    
    
    //다른 UILabel과 UITextField를 위에 쌓기 위한 UIView
    UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, widthNum, heightNum)];
    self.mainView = mainView;
    [self.view addSubview:mainView];
    
    //이진 검색의 기본 가정을 넣은 label
    UILabel *mainLB = [[UILabel alloc] initWithFrame:CGRectMake(widthNum/5, heightNum*4/16, widthNum*3/5, heightNum*2/16)];
    mainLB.text = @"원하는 숫자를 작은 수 부터 큰 순서대로 적고, 숫자 사이는 스페이스바로 띄어쓰세요.";
    mainLB.textColor = [UIColor blackColor];
    mainLB.numberOfLines = 3;
    [mainView addSubview:mainLB];
    
    //원하는 숫자를 순서대로 받기 위한 TextField
    UITextField *mainTextField =[[UITextField alloc] initWithFrame:CGRectMake(widthNum/5, heightNum*6/16, widthNum*3/5, heightNum/16)];
    mainTextField.textColor =[UIColor blackColor];
    mainTextField.borderStyle = UITextBorderStyleRoundedRect;
    mainTextField.layer.borderColor = [UIColor blackColor].CGColor;
    mainTextField.delegate = self;
    [mainView addSubview:mainTextField];
    self.mainTextField = mainTextField;
    
    //목표 값을 설정을 하라고 말해주는 단순 label
    UILabel *targetLB = [[UILabel alloc] initWithFrame:CGRectMake(widthNum*2/5, heightNum*7/16+5, widthNum/5, heightNum/16)];
    targetLB.text = @"목표 값";
    targetLB.textColor =[UIColor blackColor];
    [mainView addSubview:targetLB];
    
    
    //목표 값을 받기 위한 TextField
    UITextField *secondTextField = [[UITextField alloc] initWithFrame:CGRectMake(widthNum*3/5, heightNum*7/16+5, widthNum/5, heightNum/16)];
    secondTextField.textColor =[UIColor blackColor];
    secondTextField.borderStyle = UITextBorderStyleRoundedRect;
    secondTextField.layer.borderColor =[UIColor blackColor].CGColor;
    secondTextField.delegate = self;
    [mainView addSubview:secondTextField];
    self.secondTextField =secondTextField;
    
    
    //결과가 표시되는 label
    UILabel *resultLB = [[UILabel alloc] initWithFrame:CGRectMake(widthNum/5, heightNum*8/16+10, widthNum*3/5, heightNum*2/16)];
    resultLB.textColor = [UIColor blackColor];
    resultLB.layer.borderWidth = 1;
    resultLB.layer.borderColor = [UIColor blackColor].CGColor;
    resultLB.numberOfLines = 2;
    resultLB.layer.cornerRadius = 10.0;
    self.resultLB = resultLB;
    [mainView addSubview:self.resultLB];
    
    
}

// 텍스트 필드에 수정하기 위해 터치하면 y축 방향으로 -80pt 만큼 이동하도록 설정
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.mainView.frame = CGRectMake(0, -80, self.view.frame.size.width, self.view.frame.size.height);
}


// 자판의 return을 누르면 이루어 지는 행동 모음
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    // 첫 번째 TextField에 숫자가 입력되면 스페이스바를 기준으로 숫자가 분리되어 배열에 저장된다.
    NSArray *numberStringArray = [self.mainTextField.text componentsSeparatedByString:@" "];
    
    // 저장된 배열은 string 형태인데 이를 NSNumber로 수정해 주는것
    NSMutableArray *numberNSNumArray =[[NSMutableArray alloc] init];
    for(NSInteger i = 0 ; i <numberStringArray.count ; i++ ){
       [numberNSNumArray addObject:[NSNumber numberWithInteger:[numberStringArray[i] integerValue]]];
    }
    
    // 첫 번째 TextField의 자판에서 return을 누르면 두번째 TextField로 이동하는 메소드
    [self.secondTextField becomeFirstResponder];
    
    // 두번째 TextField에서 입력된 숫자가 NSNumber 형식으로 변수에 넣어짐
    NSNumber *targetNum = [NSNumber numberWithInteger:[self.secondTextField.text integerValue]];
    
    // 아래 이진탐색 메소드를 이용하여 입력된 배열에서 원하는 숫자가 몇 번째에 있는지 확인하는 과정
    NSInteger searchBin = [self binarySearch:numberNSNumArray setFirst:0 setLast:numberNSNumArray.count-1 setTarget:targetNum];
    
    if (searchBin == -1) {
        self.resultLB.text = @"";
        self.resultLB.text = [self.resultLB.text stringByAppendingFormat:@"%@를 찾지 못했습니다.", targetNum];
        
    }else {

        self.resultLB.text = @"";
        [self.resultLB setText:[self.resultLB.text stringByAppendingFormat:@"배열의 %lu 번째에서 %@를 찾았습니다.", searchBin+1, targetNum]];
        
    }
    [self.secondTextField resignFirstResponder];
    
    self.mainView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    return YES;
}

// 이진탐색 메소드
- (NSInteger)binarySearch:(NSMutableArray *)array setFirst:(NSInteger)firstNum setLast:(NSInteger)lastNum setTarget:(NSNumber *)target
{
    // 찾는 값이 없을 때 -1를 반환
    if(firstNum > lastNum) return -1;
    
    NSInteger midNum = (firstNum + lastNum)/2;
    
    // 배열의 가운데에 위치한 값과 목표 값과 비교
    if(target == array[midNum]){
        return midNum;
    } else if(target <  array[midNum]) { //목표값이 배열의 중앙값에 비해 작을 경우 실행
        
       return [self binarySearch:array setFirst:firstNum setLast:midNum-1 setTarget:target];
        
    } else { //목표값이 배열의 중앙값에 비해 큰 경우 실행
        
        return [self binarySearch:array setFirst:midNum+1 setLast:lastNum setTarget:target];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

```
