//
//  Accumulator.m
//  FirstiOS
//
//  Created by mocca on 2015. 9. 17..
//  Copyright (c) 2015년 mocca. All rights reserved.
//

#import "Accumulator.h"

@implementation Accumulator

{
    int value;
}

- (instancetype) init {
    self = [super init];
    if (self) {
        value = 1;
    }
    return self;
}

- (int) accumulate {
    return value++;
}

@end
