//
//  ViewController.m
//  TableViewHomework
//
//  Created by abyssinaong on 2017. 2. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"
#import "DataSource.h"
#import "CustomHeaderView.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property NSArray *name;
@property NSArray *nation;
@property NSArray *title1;
@property NSArray *year;
@property NSArray *month;
@property NSArray *days;
@property NSArray *kilometer;
@property NSArray *steps;
@property NSArray *explain;

@property NSArray *data;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView *mainTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.view addSubview:mainTableView];
    mainTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    mainTableView.delegate = self;
    mainTableView.dataSource = self;
    
    DataSource *data = [[DataSource alloc] initArray];
//    NSMutableArray *dataSet = [[NSMutableArray alloc] init];
//    [dataSet addObjectsFromArray:data.dataSet];
    self.data = data.dataSet;
    
    self.name = data.name;
    self.nation = data.nation;
    self.title1 = data.title;
    self.year = data.year;
    self.month = data.month;
    self.days = data.days;
    self.kilometer = data.kilometer;
    self.steps = data.steps;
    self.explain = data.explain;
    
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    return self.view.frame.size.height*5/8;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
//    NSLog(@"%lu",[self.data[0][0] count]);
    return 27;
}

//- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//    
//    CustomHeaderView *header01 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"cellID"];
//    
//    if(header01 == nil){
//        header01 = [[CustomHeaderView alloc] initWithReuseIdentifier:@"cellID"];
//        header01.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height/5);
//        header01.backgroundColor = [UIColor grayColor];
//    }
//    
//    return header01;
//}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    CustomHeaderView *header01 = [[CustomHeaderView alloc]init];
    
    return header01;
    
}

//- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
//    
//    
//
//}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    
    return self.view.frame.size.height/5;
}

- (CustomTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    
    if (cell == nil) {
        
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
        
    }
    
//    NSLog(@"%@",[[self.data objectAtIndex:indexPath.row] valueForKey:@"nation"]);
    
    if (indexPath.row % 2 == 0) {
        
        [cell  profileImageSetting:@"mina.png" setMainImg:@"alarct.jpg"];
        
    } else {
        
        [cell  profileImageSetting:@"mina.png" setMainImg:@"namibia.jpg"];
    }
    
    NSLog(@"%@",[[self.data objectAtIndex:indexPath.row] valueForKey:@"name"]);
    NSLog(@"%@",[[self.data objectAtIndex:indexPath.row] valueForKey:@"nation"]);
               
//    [cell textInsertSetName:[self.name objectAtIndex:indexPath.row]
//                  setNation:[self.nation objectAtIndex:indexPath.row]
//                   setTitle:[self.title1 objectAtIndex:indexPath.row]
//                    setYear:[self.year objectAtIndex:indexPath.row]
//                   setMonth:[self.month objectAtIndex:indexPath.row]
//               setTotalDays:[self.days objectAtIndex:indexPath.row]
//               setKilometer:[self.kilometer objectAtIndex:indexPath.row]
//                   setSteps:[self.steps objectAtIndex:indexPath.row]
//                 setExplain:[self.explain objectAtIndex:indexPath.row]];
    [cell textInsertSetName:[[self.data objectAtIndex:indexPath.row] valueForKey:@"name"]
                  setNation:[[self.data objectAtIndex:indexPath.row] valueForKey:@"nation"]
                   setTitle:[[self.data objectAtIndex:indexPath.row] valueForKey:@"title"]
                    setYear:[[self.data objectAtIndex:indexPath.row] valueForKey:@"year"]
                   setMonth:[[self.data objectAtIndex:indexPath.row] valueForKey:@"month"]
               setTotalDays:[[self.data objectAtIndex:indexPath.row] valueForKey:@"days"]
               setKilometer:[[self.data objectAtIndex:indexPath.row] valueForKey:@"kilometer"]
                   setSteps:[[self.data objectAtIndex:indexPath.row] valueForKey:@"steps"]
                 setExplain:[[self.data objectAtIndex:indexPath.row] valueForKey:@"explain"]];

    
    return cell;
}
/*
 [cell textInsertSetName:[[self.data objectAtIndex:indexPath.row] valueForKey:@"name"]
 setNation:[[self.data objectAtIndex:indexPath.row] valueForKey:@"nation"]
 setTitle:[[self.data objectAtIndex:indexPath.row] valueForKey:@"title"]
 setYear:[[self.data objectAtIndex:indexPath.row] valueForKey:@"year"]
 setMonth:[[self.data objectAtIndex:indexPath.row] valueForKey:@"month"]
 setTotalDays:[[self.data objectAtIndex:indexPath.row] valueForKey:@"days"]
 setKilometer:[[self.data objectAtIndex:indexPath.row] valueForKey:@"kilometer"]
 setSteps:[[self.data objectAtIndex:indexPath.row] valueForKey:@"steps"]
 setExplain:[[self.data objectAtIndex:indexPath.row] valueForKey:@"explain"]];
 
 
 
 */


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
