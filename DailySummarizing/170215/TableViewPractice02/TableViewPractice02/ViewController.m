//
//  ViewController.m
//  TableViewPractice02
//
//  Created by abyssinaong on 2017. 2. 15..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property NSDictionary *dicSet;
@property NSMutableArray *setArray;
@property UITableView *mainTV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *intoNum1 = [[NSMutableArray alloc] init];
    NSMutableArray *intoNum2 = [[NSMutableArray alloc] init];
    for(NSInteger i = 1; i <=5 ; i++ ){
        [intoNum1 addObject:[NSString stringWithFormat:@"%lu",i]];
    }
    for(NSInteger i = 7; i <=15 ; i++ ){
        [intoNum2 addObject:[NSString stringWithFormat:@"%lu",i]];
    }
    
    self.setArray = [[NSMutableArray alloc] init];
    [self.setArray addObject:intoNum1];
    [self.setArray addObject:intoNum2];
    
    
    UITableView *mainTV = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    mainTV.delegate = self;
    mainTV.dataSource =self;
    self.mainTV =mainTV;
    [self.view addSubview:mainTV];
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.setArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return [[self.setArray objectAtIndex:0] count];
            break;
            
        case 1:
            return [[self.setArray objectAtIndex:1] count];
            break;
        default:
            return 0;
            break;
    }
}


- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    switch (section) {
        case 0:
            return @"1";
            break;
            
        case 1:
            return @"2";
            break;
        default:
            return nil;
            break;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cellID";
    
    UITableViewCell *cell = [self.mainTV dequeueReusableCellWithIdentifier:cellID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    if (indexPath.section == 0) {
        
        cell.textLabel.text = [self.setArray[0] objectAtIndex:indexPath.row];
    } else if (indexPath.section == 1) {
        
        cell.textLabel.text = [self.setArray[1] objectAtIndex:indexPath.row];
//        cell.textLabel.text = [self.setArray objectAtIndex:1];
    }
    
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
