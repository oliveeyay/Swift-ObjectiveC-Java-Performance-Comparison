//
//  ViewController.m
//  TestFibonacciObjectiveC
//
//  Created by AWL_02 on 03/07/2014.
//  Copyright (c) 2014 awl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (IBAction)buttonLaunchClick:(id)sender {
    NSDate *date1 = [[NSDate alloc] init];
    int number = [self fib:30];
    
    NSDate *date2 = [[NSDate alloc] init];
    
    NSTimeInterval diff = [date2 timeIntervalSinceDate:date1];
    NSString *intervalString = [NSString stringWithFormat:@"%f", diff];
    
    NSLog(@"%@", intervalString);
    NSLog(@"%d", number);
}


-(int) fib: (int)start {
    if (start == 0) {
        return start;
    }
    if (start == 1) {
        return start;
    }
    return ([self fib:start-1] + [self fib:start-2]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
