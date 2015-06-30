//
//  DFMenuTableViewController.m
//  DFBehaviors
//
//  Created by DigitalFormsMacbook on 29.04.2015.
//  Copyright (c) 2015 Digitalforms. All rights reserved.
//

#import "DFMenuTableViewController.h"

@interface DFMenuTableViewController ()

@end

@implementation DFMenuTableViewController

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            [self performSegueWithIdentifier:@"gotocontact" sender:nil];
            break;
        
        case 1:
            [self performSegueWithIdentifier:@"gotocollection" sender:nil];
            break;
            
        case 2:
            [self performSegueWithIdentifier:@"gotoimage" sender:nil];
            break;
            
        case 3:
            [self performSegueWithIdentifier:@"gotosound" sender:nil];
            break;
            
        case 4:
            [self performSegueWithIdentifier:@"gototableview" sender:nil];
            break;
        
        default:
            break;
    }
}

@end