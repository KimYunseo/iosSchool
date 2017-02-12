//
//  ViewController.m
//  BubbleSortPractice01
//
//  Created by abyssinaong on 2017. 2. 9..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSMutableArray *array01 = [[NSMutableArray alloc] initWithObjects:@"7",@"1",@"3",@"6",@"9",@"2",@"4", nil];
    //  버블 소트
    //    [self bubbbleSort:array01];
    
    //인서트 소트
    //[self insertSort:array01];

    //셀렉션 소트
//    [self selectionSort:array01];
    
    //머지 정렬
//    [ViewController separateArray:array01];
    

//    NSLog(@"%@",[self mergeSort:array01]);
    
    [self binarySearching:array01 setNum:@"7"];
    
    
}

//버블 정렬
- (NSMutableArray *)bubbbleSort:(NSMutableArray *)unSortedList{
    
//    NSMutableArray *sortedList = [[NSMutableArray alloc] init];
    NSNumber *num;
    for(NSInteger j =0 ; j <unSortedList.count ; j+=1 ){
        for(NSInteger i =0 ; i <unSortedList.count-1-j ; i+=1 ){
            if(unSortedList[i] >= unSortedList[i+1])
            {
                num = unSortedList[i];
                unSortedList[i]= unSortedList[i+1] ;
                unSortedList[i+1] = num;
//              [unSortedList exchangeObjectAtIndex:i withObjectAtIndex:i+1];
            }
        }
    }
    
    for(NSInteger i =0 ; i <unSortedList.count ; i+=1){
        NSLog(@"%@",unSortedList[i]);
    }
    return unSortedList;
}

//insert sort
- (NSMutableArray *)insertSort:(NSMutableArray *)unSortedList{
    NSNumber *num;
    for(NSInteger j =0 ; j <unSortedList.count ; j+=1 ){
        for(NSInteger i = 0; i <= j ; i++ ){
            if( unSortedList[j] < unSortedList[i]){
                num = unSortedList[i];
                unSortedList[i] = unSortedList[j];
                unSortedList[j] = num;
            }
        }
    }
    for(NSInteger i =0 ; i <unSortedList.count ; i+=1){
        NSLog(@"%@",unSortedList[i]);
    }
    return unSortedList;
}


//selection sort
- (NSMutableArray *)selectionSort:(NSMutableArray *)unSortedList
{
    NSNumber *num;
    for(NSInteger j =0 ; j <unSortedList.count ; j+=1){
        for(NSInteger i = 0; i < unSortedList.count ; i++){
            if(unSortedList[j] < unSortedList[i]){
                num = unSortedList[i];
                unSortedList[i] = unSortedList[j];
                unSortedList[j] = num;
            }
        }
    }
    for(NSInteger i =0 ; i <unSortedList.count ; i+=1){
        NSLog(@"%@",unSortedList[i]);
    }
    return unSortedList;
}

// merage sort

// binary searching
- (void)binarySearching:(NSMutableArray *)array setNum:(NSString *)number
{
    
    if(array.count == 1){
        if([number isEqualToString:array[0]]) {
            NSLog(@"%@를 찾았습니다.", array[0]);
            
        }
        else NSLog(@"없습니다.");
    } else if (array.count == 2) {
        
        if([number isEqualToString:array[0]]) NSLog(@"%@를 찾았습니다.", array[0]);
        else if([number isEqualToString:array[0]]) NSLog(@"%@를 찾았습니다.", array[1]);
        else NSLog(@"없습니다.");
    } else {
        if ([number isEqualToString:array[(NSInteger)array.count/2-1]]) NSLog(@"%@를 찾았습니다.", array[array.count/2-1]);
        else [self binarySearching:array[array.count/2-2] setNum:number];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
