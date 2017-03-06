//
//  DataSource.h
//  TableViewHomework
//
//  Created by abyssinaong on 2017. 2. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSource : NSObject

@property NSArray *dataSet;

@property NSArray *name;
@property NSArray *nation;
@property NSArray *title;
@property NSArray *year;
@property NSArray *month;
@property NSArray *days;
@property NSArray *kilometer;
@property NSArray *steps;
@property NSArray *explain;

- (instancetype)initArray;

@end
