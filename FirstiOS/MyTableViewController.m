//
//  MyTableViewController.m
//  FirstiOS
//
//  Created by mocca on 2015. 9. 18..
//  Copyright (c) 2015년 mocca. All rights reserved.
//

#import "MyTableViewController.h"
#import "CustomTableCell.h"
#import "AppEntry.h"

@implementation MyTableViewController

{
    NSMutableArray *appEntries;
    int             makeCount;
}

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        appEntries = [[NSMutableArray alloc] init];
        
        //Load Json Data...
        NSString *url = @"https://itunes.apple.com/kr/rss/toppaidapplications/limit=100/json";
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
        NSDictionary *jsonObject = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        NSArray *entries = [[jsonObject objectForKey:@"feed"] objectForKey:@"entry"];

        //JSON to AppEntry Object
        for (NSDictionary *currEntry in entries) {
            [appEntries addObject:[[AppEntry alloc] initWithEntry:currEntry]];
        }
    }
    return self;
}

- (void) viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"App Rank"];
    [[self tableView] registerClass:[CustomTableCell class] forCellReuseIdentifier:@"default cell"];
}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [appEntries count];
}

// Cell에 데이터 표현
- (CustomTableCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // Cell을 직접 만들지 않고 TableView에서 dequeue해서 사용
    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"default cell" forIndexPath:indexPath];
    AppEntry *appEntry = [appEntries objectAtIndex:[indexPath row]];
    printf("%s \n", [[appEntry appName] UTF8String]);
    printf("dequeued cell: %s \n", [[[cell textLabel] text] UTF8String]);
    UIImage *image = [appEntry thumbnail];
    [[cell thumbnail] setImage:image];
    [[cell textLabel] setText:[[appEntries objectAtIndex:[indexPath row]] appName]];
    [[cell detailTextLabel] setText:[[appEntries objectAtIndex:[indexPath row]] rights]];
    makeCount++;
    printf("%d \n", makeCount);
    return cell;
}

@end
