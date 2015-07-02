//
//  DFTableViewDataSource.h
//  Pods
//
//  Created by Cezary Bielecki on 10.03.2015.
//
//

#import "DFBehavior.h"

@interface DFTableViewDataSourceDelegateBehavior : DFBehavior <UITableViewDataSource, UITableViewDelegate>

/*
 *  @brief Table view that will be used in this behavior.
 */

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end