//
//  CustomTableCell.m
//  FirstiOS
//
//  Created by mocca on 2015. 9. 18..
//  Copyright (c) 2015년 mocca. All rights reserved.
//

#import "CustomTableCell.h"

@implementation CustomTableCell

{
    UIImageView *thumbnail;
    UILabel     *textLabel;
    UILabel     *detailTextLabel;
}

@synthesize thumbnail = thumbnail;
@synthesize textLabel = textLabel;
@synthesize detailTextLabel = detailTextLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGSize size = self.contentView.frame.size;
        
        //initialize Views
        self.thumbnail = [[UIImageView alloc] initWithFrame:CGRectMake(20.0, 5.0, 35, 35)];
        self.textLabel = [[UILabel alloc] initWithFrame:CGRectMake(60.0, 0, size.width-60, size.height-16)];
        self.detailTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(60.0, 16.0, size.width-60, size.height-16)];
        
        //textLabel Style
        [self.textLabel setFont:[UIFont boldSystemFontOfSize:16.0]];
        [self.textLabel setTextAlignment:NSTextAlignmentLeft];
        [self.textLabel setTextColor:[UIColor darkGrayColor]];
        
        //detailTextLabel Style
        [self.detailTextLabel setFont:[UIFont systemFontOfSize:8.0]];
        [self.detailTextLabel setTextAlignment:NSTextAlignmentLeft];
        [self.detailTextLabel setTextColor:[UIColor grayColor]];
        
        [self.contentView addSubview:thumbnail];
        [self.contentView addSubview:textLabel];
        [self.contentView addSubview:detailTextLabel];
    }
    return self;
}

@end
