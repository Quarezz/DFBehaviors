//
//  DFTableViewDataSource.m
//  Pods
//
//  Created by Cezary Bielecki on 10.03.2015.
//
//

#import "DFTableViewDataSource.h"

@implementation DFTableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [[UITableViewCell alloc] init];
}

@end
