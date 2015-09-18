//
//  MyTableViewController.h
//  FirstiOS
//
//  Created by mocca on 2015. 9. 18..
//  Copyright (c) 2015년 mocca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewController : UITableViewController

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView;

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

@end
