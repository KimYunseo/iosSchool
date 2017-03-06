//
//  ViewController.m
//  TableViewPractice01
//
//  Created by abyssinaong on 2017. 2. 16..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property NSMutableArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.array = [[NSMutableArray alloc] init];
    for(NSInteger i =1 ; i<=100 ; i++){
        
        [self.array addObject:[NSString stringWithFormat:@"%ld", i]];

    }
    UITableView *mainTV = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    mainTV.delegate = self;
    mainTV.dataSource = self;
    
    [self.view addSubview:mainTV];

    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.array.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cellID"];
    if(cell == nil)
    {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
        
    }
    
    cell.textLabel.text = [self.array objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.


}


@end
