//
//  ViewController.m
//  FirstiOS
//
//  Created by mocca on 2015. 9. 10..
//  Copyright (c) 2015년 mocca. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

{
    NSMutableArray *accumulatorVcArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self view] setBackgroundColor: [UIColor whiteColor]];
    accumulatorVcArray = [[NSMutableArray alloc] init];
    int i;
    for (i = 0; i < 3; i++) {
        [accumulatorVcArray addObject:[[AccumulatorVC alloc] initWithCGRectMakeX:10 y:(1+i)*50 width:110 height:50]];
        [self addChildViewController: [accumulatorVcArray objectAtIndex:i]];
        [[self view] addSubview: [[accumulatorVcArray objectAtIndex:i] view]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // View를 정리하는 작업
}

@end
