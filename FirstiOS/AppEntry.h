//
//  AppEntry.h
//  FirstiOS
//
//  Created by mocca on 2015. 9. 18..
//  Copyright (c) 2015년 mocca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AppEntry : NSObject

@property (nonatomic, readonly) NSString *appName;
@property (nonatomic, readonly) NSString *rights;
@property (nonatomic, readonly) NSURL    *thumbnailUrl;
@property (nonatomic, readonly) UIImage  *thumbnail;

- (instancetype) initWithEntry:(NSDictionary *)entry;

- (UIImage*) thumbnail;

@end
