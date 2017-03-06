//
//  CustomView.m
//  AutolaoutGachaPratice01
//
//  Created by abyssinaong on 2017. 3. 1..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "CustomView.h"
@interface CustomView()




@end

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    
    NSLog(@"test");
    
    
//    [self mainImgRandom];
    return self;
}

- (void)hoho{
    NSLog(@"dsfa");
}

- (IBAction)hpValuePlus:(id)sender{
    
    NSInteger point = [[DataCenter shareData].point integerValue];
    
    if (point != 0) {
        
        NSInteger current = [self.hpLB.text integerValue];
        current += 1;
        self.hpLB.text = [NSString stringWithFormat:@"%lu", current];
        
        point -= 1;
        
        [[DataCenter shareData] pointSave:[NSString stringWithFormat:@"%lu", point]];
        
        [self.deldgate minusPoint];
        
    }
}


- (void)mainImgRandom{
    NSLog(@"image");
    
    NSArray *imageName = @[@"cubeMoa.jpg",@"diabllo.jpg",@"jupiter.jpg",@"kalcas.jpg",@"panteaon.jpg",@"tanatos.jpg",@"midas.png",@"tot.jpg",@"aten.jpg",@"pennil.jpg"];
    int num = (int)imageName.count-1;
    int randomNum = arc4random_uniform(num);
    NSInteger number = randomNum;
    
    self.mainImg.image = [UIImage imageNamed:imageName[number]];
}

- (IBAction)strValuePlus:(id)sender{
    
    NSInteger point = [[DataCenter shareData].point integerValue];
    
    if (point != 0) {
        
        NSInteger current = [self.strLB.text integerValue];
        
        current += 1;
        
        self.strLB.text = [NSString stringWithFormat:@"%lu", current];
        
        point -= 1;
        
        [[DataCenter shareData] pointSave:[NSString stringWithFormat:@"%lu", point]];
        [self.deldgate minusPoint];
        
    }
}

- (void)layoutSubviews{
    
    [self mainImgRandom];
}

- (IBAction)defValuePlus:(id)sender{
    
    NSInteger point = [[DataCenter shareData].point integerValue];
    
    if (point != 0) {
        
        NSInteger current = [self.defLB.text integerValue];
        
        current += 1;
        
        self.defLB.text = [NSString stringWithFormat:@"%lu", current];
        point -= 1;
        
        [[DataCenter shareData] pointSave:[NSString stringWithFormat:@"%lu", point]];
        [self.deldgate minusPoint];
        
    }
    
}




@end
