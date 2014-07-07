//
//  DetailViewController.m
//  TestBubbleSortObjectiveC
//
//  Created by AWL_02 on 02/07/2014.
//  Copyright (c) 2014 awl. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
            

@end

@implementation DetailViewController
            
#pragma mark - Managing the detail item

NSMutableArray *inputArr = nil;

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
    
    inputArr = [[NSMutableArray alloc] init];
    for (int i = 0; i < 1000; i+=10) {
        [inputArr insertObject:@12 atIndex:i];
        [inputArr insertObject:@56 atIndex:i+1];
        [inputArr insertObject:@32 atIndex:i+2];
        [inputArr insertObject:@23 atIndex:i+3];
        [inputArr insertObject:@67 atIndex:i+4];
        [inputArr insertObject:@87 atIndex:i+5];
        [inputArr insertObject:@45 atIndex:i+6];
        [inputArr insertObject:@23 atIndex:i+7];
        [inputArr insertObject:@10 atIndex:i+8];
        [inputArr insertObject:@11 atIndex:i+9];
    }
}

- (IBAction)buttonLaunchClick:(id)sender {
    NSDate *date1 = [[NSDate alloc] init];
    
    for (int i = 0; i < [inputArr count]; i++) {
        for (int j =1; j < ([inputArr count] - 1); j++) {
            if ([[inputArr objectAtIndex:(j-1)] intValue] > [[inputArr objectAtIndex:(j)] intValue]) {
                [self swapFirstIndex:j-1 withSecondIndex:j];
            }
        }
    }
    
    NSDate *date2 = [[NSDate alloc] init];
    
    NSTimeInterval diff = [date2 timeIntervalSinceDate:date1];
    NSString *intervalString = [NSString stringWithFormat:@"%f", diff];
    
    self.detailDescriptionLabel.text = intervalString;
}

-(void)swapFirstIndex:(NSUInteger)firstIndex withSecondIndex:(NSUInteger)secondIndex {
    NSNumber *tmp = [inputArr objectAtIndex:firstIndex];
    [inputArr replaceObjectAtIndex:firstIndex withObject:[inputArr objectAtIndex:secondIndex]];
    [inputArr replaceObjectAtIndex:secondIndex withObject:(id)tmp];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
