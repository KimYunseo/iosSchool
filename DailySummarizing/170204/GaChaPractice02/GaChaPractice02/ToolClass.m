//
//  ToolClass.m
//  GaChaPractice02
//
//  Created by abyssinaong on 2017. 2. 5..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ToolClass.h"

@implementation ToolClass

- (UIView *)createView{
    UIView *createView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    
    return createView;
}

//- (instancetype)initWithView{
//    self = [super init];
//    if (self) {
//        
//        self.subMainCreate.frame = CGRectMake(0, 0, 100, 100);
//        self.backgroundColor =[UIColor blueColor];
//    }
//    return self;
//}

+ (UIView *)subMainCreate{
    UIView *subMainCreate = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    subMainCreate.backgroundColor = [UIColor grayColor];
    return subMainCreate;
}

+ (UIButton *)createButtonSetxNum:(CGFloat)numX yNum:(CGFloat)numY{
    
    UIButton *createButton = [UIButton buttonWithType:UIButtonTypeCustom];
    createButton.frame = CGRectMake(numX, numY, 15, 15);

    createButton.backgroundColor = [UIColor yellowColor];
    [createButton setTitle:@"+" forState:UIControlStateNormal];
    [createButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [createButton setTitle:@"+" forState:UIControlStateHighlighted];
    [createButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    
    return createButton;
}

+ (UIImageView *)createImageView:(NSString *)imgName setX:(CGFloat)num setWidth:(CGFloat)width setHeight:(CGFloat)height{
    UIImageView *createImageView = [[UIImageView alloc] init];
    if([imgName isEqualToString:@"gold.jpg"] || [imgName isEqualToString:@"point.png"]){
        
        createImageView.frame = CGRectMake(num, 25, width, height);
        createImageView.image = [UIImage imageNamed:imgName];
    } else {
    
    createImageView.frame = CGRectMake(num, 0, width, height);
    createImageView.image = [UIImage imageNamed:imgName];
    }
    return createImageView;
}

+ (UILabel *)createLabelSetX:(CGFloat)xNum setY:(CGFloat)yNum selcMode:(NSUInteger)selc{
    UILabel *createLabel = [[UILabel alloc]init];
    if(selc ==1){
        createLabel.frame = CGRectMake(xNum, yNum, 30, 15);
        [createLabel setTextAlignment:NSTextAlignmentLeft];
    } else {
        createLabel.frame = CGRectMake(xNum, yNum, 40, 15);
        [createLabel setTextAlignment:NSTextAlignmentRight];
    }
    
    createLabel.adjustsFontForContentSizeCategory = YES;
//    [createLabel font];
//    [createLabel setBackgroundColor:[UIColor blackColor]];

    
    return createLabel;
}

+ (UILabel *)topLabelSetX:(CGFloat)xNum setY:(CGFloat)yNum selcMode:(NSUInteger)selc{
    UILabel *createLabel = [[UILabel alloc]init];
    if(selc ==1){
        createLabel.frame = CGRectMake(xNum, yNum, 30, 15);
        [createLabel setTextAlignment:NSTextAlignmentLeft];
    } else {
        createLabel.frame = CGRectMake(xNum, yNum, 100, 15);
        [createLabel setTextAlignment:NSTextAlignmentRight];
    }
   
    return createLabel;
}



+ (NSString *)randomCharctorName
{
    NSString *charctorName[] ={@"cubeMoa.jpg",@"diabllo.jpg",@"jupiter.jpg",@"kalcas.jpg",@"panteaon.jpg",@"tanatos.jpg",@"midas.png",@"tot.jpg",@"aten.jpg",@"pennil.jpg"};
    
    NSInteger ranNum = arc4random() %10 -1 ;
    
    if (ranNum >= 10 ||ranNum <0) {
        ranNum = 9;
    }
    
    NSString *randomCharctor = charctorName[ranNum];
    NSLog(@"%@",randomCharctor);
    
    return randomCharctor;
}

@end
