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
    
    [self.tableView01 reloadData];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"title";
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"+" style:UIBarButtonItemStylePlain target:self action:@selector(addAction:)];
    
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    
    
}

- (void)addAction:(UIBarButtonItem *)sender{
    
    AddViewController *aVC = [self.storyboard instantiateViewControllerWithIdentifier:@"AddViewController"];
    [self.navigationController pushViewController:aVC animated:YES];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    
    
    return [[DataCenter shareData].friend count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"
                                                                   forIndexPath:indexPath];
    
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
//    }
    
    
//    NSDictionary *temp = [DataCenter shareData].dic;
//    NSLog(@"%@", temp);
    
    NSDictionary *test = [[DataCenter shareData].friend objectAtIndex:indexPath.row];
    NSString *temp = [[test objectForKey:@"name"] stringByAppendingString:[test objectForKey:@"phoneNumber"]];
    
    cell.textLabel.text = temp;

    
    /*
    NSArray *array = [temp objectForKey:@"friend"];
    for (NSInteger i = 0; i< array.count; i++) {
        NSString *dic = [array[i] objectForKey:@"name"];
        NSLog(@"%@", dic);
            }
    */
    
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
