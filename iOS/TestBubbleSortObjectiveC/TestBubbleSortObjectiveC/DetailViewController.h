//
//  DetailViewController.h
//  TestBubbleSortObjectiveC
//
//  Created by AWL_02 on 02/07/2014.
//  Copyright (c) 2014 awl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

-(void)swapFirstIndex:(NSUInteger)firstIndex withSecondIndex:(NSUInteger)secondIndex;

@end

