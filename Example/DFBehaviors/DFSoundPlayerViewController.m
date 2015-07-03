//
//  DFSoundPlayerViewController.m
//  DFBehaviors
//
//  Created by DigitalFormsMacbook on 04.05.2015.
//  Copyright (c) 2015 Digitalforms. All rights reserved.
//

#import "DFSoundPlayerViewController.h"
#import <DFSoundPlayerBehavior.h>

@interface DFSoundPlayerViewController ()

@property (strong, nonatomic) IBOutlet DFSoundPlayerBehavior *soundPlayerBehavior;

@end

@implementation DFSoundPlayerViewController

- (IBAction)volumeValueChanged:(UISlider *)sender
{
    self.soundPlayerBehavior.volume = sender.value;
}

@end
