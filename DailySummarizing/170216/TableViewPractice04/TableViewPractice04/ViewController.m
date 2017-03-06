//
//  ViewController.m
//  TableViewPractice04
//
//  Created by abyssinaong on 2017. 2. 16..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property NSArray *array1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    self.array1 = @[@{@"name":@"aten", @"image":@"aten.jpg"},@{@"name":@"cardBack", @"image":@"cardBack.png"},@{@"name":@"cubeMao", @"image":@"cubeMoa.jpg"}];
    
    
    
    UITableView *mainTV= [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:mainTV];
    mainTV.delegate =self;
    mainTV.dataSource =self;
    
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.array1.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    
    if(cell == nil){
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    cell.imageView.image = [UIImage imageNamed:[[self.array1 objectAtIndex:indexPath.row] objectForKey:@"image"]];
    cell.textLabel.text = [[self.array1 objectAtIndex:indexPath.row] objectForKey:@"name"];
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"%@",indexPath);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
