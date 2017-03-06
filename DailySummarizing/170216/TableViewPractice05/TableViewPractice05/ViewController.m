//
//  ViewController.m
//  TableViewPractice05
//
//  Created by abyssinaong on 2017. 2. 16..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView *mainTable = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:mainTable];
    mainTable.delegate = self;
    mainTable.dataSource =self;
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return [[DataCenter defaultData] sectionCount];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    DataCenter *num = [[DataCenter alloc]init];
    [num allAnimals.];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
