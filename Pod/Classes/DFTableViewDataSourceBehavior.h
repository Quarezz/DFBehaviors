//
//  DFTableViewDataSource.h
//  Pods
//
//  Created by Cezary Bielecki on 10.03.2015.
//
//

#import "DFBehavior.h"

@interface DFTableViewDataSourceBehavior : DFBehavior <UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end