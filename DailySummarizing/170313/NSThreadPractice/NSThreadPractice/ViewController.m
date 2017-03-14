//
//  ViewController.m
//  NSThreadPractice
//
//  Created by abyssinaong on 2017. 3. 13..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSThread *thread;
@property (weak, nonatomic) IBOutlet UILabel *timeLB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    dispatch_async(dispatch_get_main_queue(), ^{
//        sleep(1);
//        NSLog(@"1");
//    });
//   
//    dispatch_async(dispatch_get_main_queue(), ^{
//        sleep(1);
//        NSLog(@"2");
//    });
//    
//    dispatch_async(dispatch_get_main_queue(), ^{
//        sleep(1);
//        NSLog(@"3");
//    });
//    
//    dispatch_async(dispatch_get_main_queue(), ^{
//        sleep(1);
//        NSLog(@"4");
//    });
//    
//    dispatch_async(dispatch_get_main_queue(), ^{
//        sleep(1);
//        NSLog(@"5");
//    });
//    
//    dispatch_async(dispatch_get_main_queue(), ^{
//        sleep(1);
//        NSLog(@"6");
//    });
    
    
//        dispatch_sync(dispatch_get_main_queue(), ^{
//            sleep(1);
//            NSLog(@"1");
//        });
//    
//        dispatch_sync(dispatch_get_main_queue(), ^{
//            sleep(2);
//            NSLog(@"2");
//        });
//    
//        dispatch_sync(dispatch_get_main_queue(), ^{
//            sleep(3);
//            NSLog(@"3");
//        });
//    
//        dispatch_sync(dispatch_get_main_queue(), ^{
//            sleep(4);
//            NSLog(@"4");
//        });
//    
//        dispatch_sync(dispatch_get_main_queue(), ^{
//            sleep(5);
//            NSLog(@"5");
//        });
//    
//        dispatch_sync(dispatch_get_main_queue(), ^{
//            sleep(6);
//            NSLog(@"6");
//        });
    
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//       
//        dispatch_async(dispatch_get_main_queue(), ^{
//            
//        });
//        
//        dispatch_async(dispatch_get_main_queue(), ^{
//            
//        });
//    });
//    
    
}


- (IBAction)btnAction:(id)sender {
    
     self.thread = [[NSThread alloc] initWithTarget:self selector:@selector(threadAction) object:nil];
    
    [self.thread start];
    
    
    
}

- (void)threadAction{
    
    for (NSInteger i = 1; i < 100; i++) {
        sleep(1);
    
        
        [self performSelectorOnMainThread:@selector(changeLB:) withObject:[NSString stringWithFormat:@"%ld", i] waitUntilDone:YES];
        
        NSLog(@"%ld" , i );
        
    }
    
}

- (void)changeLB:(NSString *)num{
    
    self.timeLB.text = num;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
