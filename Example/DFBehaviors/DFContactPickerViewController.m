//
//  DFContactPickerViewController.m
//  DFBehaviors
//
//  Created by DigitalFormsMacbook on 29.04.2015.
//  Copyright (c) 2015 Digitalforms. All rights reserved.
//

#import "DFContactPickerViewController.h"

@interface DFContactPickerViewController ()

@end

@implementation DFContactPickerViewController

- (IBAction)contactBehaviorValueChanged:(id)sender
{
    self.firstNameLabel.text = @"";
    self.middleNameLabel.text = @"";
    self.lastNameLabel.text = @"";
}
@end
