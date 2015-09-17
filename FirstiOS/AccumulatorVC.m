//
//  AccumulatorVC.m
//  FirstiOS
//
//  Created by mocca on 2015. 9. 17..
//  Copyright (c) 2015년 mocca. All rights reserved.
//

#import "AccumulatorVC.h"

@interface AccumulatorVC ()

{
    Accumulator *accumulator;
    UILabel     *label;
    UIButton    *button;
    CGFloat x;
    CGFloat y;
    CGFloat width;
    CGFloat height;
}

@end

@implementation AccumulatorVC

- (instancetype) initWithCGRectMakeX:(CGFloat)mX
                                   y:(CGFloat)mY
                                   width:(CGFloat)mWidth
                                   height:(CGFloat)mHeight
{
    self = [super init];
    if (self) {
        x = mX;
        y = mY;
        width = mWidth;
        height = mHeight;
    }
    return self;
}

- (void) viewDidLoad {
    accumulator = [[Accumulator alloc] init];
    label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 40)];
    [label setText:@"1"];
    [label setTextAlignment:NSTextAlignmentRight];
    [[self view] addSubview:label];
    
    button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setFrame:CGRectMake(60, 0, 50, 40)];
    [button setTitle:@"acc" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonTapped:)forControlEvents:UIControlEventTouchUpInside];
    [[self view] setFrame:CGRectMake(x, y, width, height)];
    [[self view] addSubview:button];
}

- (IBAction) buttonTapped:(id)aSender {
    [label setText:[NSString stringWithFormat:@"%d", [accumulator accumulate]]];
}

@end
