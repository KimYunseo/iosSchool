//
//  DataCenter.m
//  DataPlist01
//
//  Created by abyssinaong on 2017. 3. 3..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "DataCenter.h"
@interface DataCenter()

@property NSMutableDictionary *dic;
@property NSMutableArray *friend;

@end

@implementation DataCenter

+ (instancetype)shareData{
    
    static DataCenter *data;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        data = [[DataCenter alloc] init];
    });
    
    return data;
    
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self plistSave];
        self.dic = [self dicCreat];
        
        self.friend = [self friendArray];
    }
    return self;
}



- (void)plistSave{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *basePath = [paths objectAtIndex:0];
    
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Sample.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:docuPath]) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
}


- (NSMutableDictionary *)dicCreat{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *basePath = [paths objectAtIndex:0];
    
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Sample.plist"];
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    dic = [NSMutableDictionary dictionaryWithContentsOfFile:docuPath];
    
    return dic;
}


- (NSMutableArray *)friendArray{
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    dic = [self dicCreat];
    
    NSMutableArray *friend = [[NSMutableArray alloc] init];
    friend = [dic objectForKey:@"friend"];
    
    return friend;
}



- (void)friendSave:(NSMutableDictionary *)data {
    
    [self.friend addObject:data];
    
    [self.dic setObject:self.friend forKey:@"friend"];
    
    NSLog(@"friendSave %@", self.dic);
    
    [self plistReplace];
}


- (void)plistReplace{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *basePath = [paths objectAtIndex:0];
    
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Sample.plist"];
    
    [self.dic writeToFile:docuPath atomically:NO];
    
}

@end
