//
//  ViewController.m
//  TableViewPractice02
//
//  Created by abyssinaong on 2017. 2. 16..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property NSMutableArray *arrayInArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.arrayInArray =[[NSMutableArray alloc] init];
    NSArray *array1 = @[@"1", @"2", @"3", @"4"];
    NSArray *array2 = @[@"김", @"이", @"박", @"정"];
    
    [self.arrayInArray addObject:array1];
    [self.arrayInArray addObject:array2];
    
    UITableView *mainTV = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    mainTV.delegate = self;
    mainTV.dataSource =self;
    [self.view addSubview:mainTV];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return self.arrayInArray.count;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    switch (section) {
        case 0:
            return [self.arrayInArray[section] count];
            break;
        case 1:
            return [self.arrayInArray[section] count];
        default:
            return 0;
            break;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    
    if(cell == nil){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];

    }
    
    
        cell.textLabel.text = [self.arrayInArray[indexPath.section] objectAtIndex:indexPath.row];
   
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
