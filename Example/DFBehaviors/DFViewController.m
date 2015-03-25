//
//  DFViewController.m
//  DFBehaviors
//
//  Created by Digitalforms on 02/04/2015.
//  Copyright (c) 2014 Digitalforms. All rights reserved.
//

#import "DFViewController.h"
#import <DFImagePickerBehavior.h>

@interface DFViewController ()

@end

@implementation DFViewController

- (IBAction)imagePickerBehaviorValueChanged:(DFImagePickerBehavior *)sender
{
    NSLog(@"%@", sender.selectedImage);
}

@end
