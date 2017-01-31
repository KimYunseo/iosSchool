//
//  Student.m
//  IFStatementPractice
//
//  Created by abyssinaong on 2017. 1. 24..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Student.h"
@interface Student()

@property NSString *grade;
@property CGFloat point;

@end

@implementation Student


- (NSString *)getGrade:(NSInteger)score
{
    
    if(score <= 50)
    {
        
        self.grade = @"F";
        
    } else if(score <= 60 )
    {
        
        self.grade = @"D";
        
    }else if(score <= 70 )
    {
        
        self.grade = @"D+";
        
    }else if(score <= 75 )
    {
     
        self.grade = @"C";
        
    } else if(score <= 80 )
    {
        
        self.grade = @"C+";
        
        
    }else if(score <= 85 )
    {
        
        self.grade = @"B";
       
        
    }else if(score <= 90 )
    {
        
        self.grade = @"B+";
        
        
    }else if(score <= 95 )
    {
        
        self.grade = @"A";
        
        
    }else if(score <= 100 )
    {
        
        self.grade = @"A+";
        
    }
    
    return self.grade;
}


- (CGFloat)getPoint:(NSString *)grade
{
    
    if([grade isEqualToString:@"A+"]){
        
        self.point = 4.5;
        
    } else if([grade isEqualToString:@"A"])
    {
        self.point = 4.0;
    }else if([grade isEqualToString:@"B+"])
    {
        self.point = 3.5;
    }
    else if([grade isEqualToString:@"B"])
    {
        self.point = 3.0;
    }
    else if([grade isEqualToString:@"C+"])
    {
        self.point = 2.5;
    }
    else if([grade isEqualToString:@"C"])
    {
        self.point = 2.0;
    }
    else if([grade isEqualToString:@"D+"])
    {
        self.point = 1.5;
    }
    else if([grade isEqualToString:@"D"])
    {
        self.point = 1.0;
    }
    else if([grade isEqualToString:@"F"])
    {
        self.point = 0;
    }
    
    return self.point;
}

@end
