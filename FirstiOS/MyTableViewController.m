//
//  MyTableViewController.m
//  FirstiOS
//
//  Created by mocca on 2015. 9. 18..
//  Copyright (c) 2015년 mocca. All rights reserved.
//

#import "MyTableViewController.h"

@implementation MyTableViewController

{
    NSMutableDictionary *model;
}

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        model = [[NSMutableDictionary alloc] init];
        [model setObject:@[@"NAVER", @"Apple", @"IBM", @"Google", @"Facebook"] forKey:@"section1"];
    }
    return self;
}

- (void) viewDidLoad {
    [super viewDidLoad];
}

- (void) didReceiveMemoryWarning {
    
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return [model count];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSString *key = (section == 0) ? @"section1" : @"section2";
    return [[model objectForKey:key] count];
}

// Cell에 데이터 표현
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // Cell을 직접 만들지 않고 TableView에서 dequeue해서 사용
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"default cell"forIndexPath:indexPath];
    
    NSString *key = ([indexPath section] == 0) ? @"section1" : @"section2";
    NSString *title = [[model objectForKey:key] objectAtIndex:[indexPath row]];
    [[cell textLabel] setText:title];
    return cell;
}

@end
