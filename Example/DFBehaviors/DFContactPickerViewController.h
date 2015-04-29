//
//  DFContactPickerViewController.h
//  DFBehaviors
//
//  Created by DigitalFormsMacbook on 29.04.2015.
//  Copyright (c) 2015 Digitalforms. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DFContactPickerBehavior.h>

@interface DFContactPickerViewController : UITableViewController

@property (strong, nonatomic) IBOutlet DFContactPickerBehavior *contactPickerBehavior;
@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *middleNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;

- (IBAction)contactBehaviorValueChanged:(id)sender;

@end