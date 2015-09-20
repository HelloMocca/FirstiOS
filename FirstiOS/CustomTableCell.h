//
//  CustomTableCell.h
//  FirstiOS
//
//  Created by mocca on 2015. 9. 18..
//  Copyright (c) 2015년 mocca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell

@property (nonatomic, strong) UIImageView *thumbnail;
@property (nonatomic, strong) UILabel     *textLabel;
@property (nonatomic, strong) UILabel     *detailTextLabel;

@end
