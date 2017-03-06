//
//  AddViewController.m
//  DataPlist01
//
//  Created by abyssinaong on 2017. 3. 3..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "AddViewController.h"
#import "DataCenter.h"

@interface AddViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *phoneNum;

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"save" style:UIBarButtonItemStyleDone target:self action:@selector(addplistAction:)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    
}
//rightBtn를 눌렀을 때 행동하는 메소드
- (void)addplistAction:(UIBarButtonItem *)sender {
    [[DataCenter shareData] friendSave:[self insertFriend:self.nameTF.text setphone:self.phoneNum.text]];
    
    [self.navigationController popViewControllerAnimated:YES];
    
}


//이름과 폰번호를 받아 dictionary로 보내는 메소드
- (NSMutableDictionary *)insertFriend:(NSString *)name
                             setphone:(NSString *)number{
    
    NSMutableDictionary *temp = [[NSMutableDictionary alloc] init];
    [temp setObject:name forKey:@"name"];
    [temp setObject:number forKey:@"phoneNumber"];
    
    return temp;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
