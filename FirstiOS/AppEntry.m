//
//  AppEntry.m
//  FirstiOS
//
//  Created by mocca on 2015. 9. 18..
//  Copyright (c) 2015년 mocca. All rights reserved.
//

#import "AppEntry.h"

@implementation AppEntry

{
    NSString *appName;
    NSString *rights;
    NSURL    *thumbnailUrl; // 53x53
    UIImage  *thumbnail;
}

@synthesize appName = appName;
@synthesize rights = rights;
@synthesize thumbnailUrl = thumbnailUrl;
@synthesize thumbnail = thumbnail;

- (instancetype) initWithEntry:(NSDictionary *)entry {
    self = [super init];
    if (self) {
        appName = [[entry valueForKey:@"im:name"] valueForKey:@"label"];
        rights = [[entry valueForKey:@"rights"] valueForKey:@"label"];
        thumbnailUrl = [NSURL URLWithString:[[[entry valueForKey:@"im:image"] firstObject ] valueForKey:@"label"]];
    }
    return self;
}

- (UIImage *)thumbnail {
    if (thumbnail == nil) {
        thumbnail = [UIImage imageWithData:[NSData dataWithContentsOfURL:thumbnailUrl]];
    }
    return thumbnail;
}

@end
