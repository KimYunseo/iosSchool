//
//  CustomViewController.m
//  DataPlist01
//
//  Created by abyssinaong on 2017. 3. 3..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "CustomViewController.h"
#import "DataCenter.h"
#import "AddViewController.h"

@interface CustomViewController ()
<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView01;


@end

@implementation CustomViewController

- (void)viewWillAppear:(BOOL)animated{
    //뷰가 다시 나올 때 데이터를 reload함
    [self.tableView01 reloadData];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"title";
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"+" style:UIBarButtonItemStylePlain target:self action:@selector(addAction:)];
    
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    
    
}

//navigation item에 있는 UIBarButtonItem(rightBtn)을 눌렀을 때 행동하는 메소드
- (void)addAction:(UIBarButtonItem *)sender{
    
    AddViewController *aVC = [self.storyboard instantiateViewControllerWithIdentifier:@"AddViewController"];
    [self.navigationController pushViewController:aVC animated:YES];
    
    
}

//테이블뷰의 섹션에 해당하는 row값을 설정해줌
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [[DataCenter shareData].friend count];
}


//
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //storyboard를 사용할때 dequeueReusableCellWithIdentifier:forIndexPath: 를 사용한다.
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"
                                                                   forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
    }

    NSDictionary *test = [[DataCenter shareData].friend objectAtIndex:indexPath.row];
    NSString *temp = [[test objectForKey:@"name"] stringByAppendingString:[test objectForKey:@"phoneNumber"]];
    
    cell.textLabel.text = temp;
    
    return cell;
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
