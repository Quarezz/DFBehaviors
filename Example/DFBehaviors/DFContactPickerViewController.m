//
//  DFContactPickerViewController.m
//  DFBehaviors
//
//  Created by DigitalFormsMacbook on 29.04.2015.
//  Copyright (c) 2015 Digitalforms. All rights reserved.
//

#import "DFContactPickerViewController.h"
#import <DFContactPickerBehavior.h>

@interface DFContactPickerViewController ()

@end

@implementation DFContactPickerViewController

- (IBAction)contactBehaviorValueChanged:(DFContactPickerBehavior *)sender
{
    self.firstNameLabel.text = sender.personFirstName;
    self.middleNameLabel.text = sender.personMiddleName;
    self.lastNameLabel.text = sender.personLasttName;
    
    self.prefixLabel.text = sender.personPrefix;
    self.sufixLabel.text = sender.personSufix;
    
    self.nicknameLabel.text = sender.personNickname;
    
    self.firstNamePhoneticLabel.text = sender.personFirstNamePhonetic;
    self.lastNamePhoneticLabel.text = sender.personLastNamePhonetic;
    self.middleNamePhoneticLabel.text = sender.personMiddleNamePhonetic;
    
    self.creationDateLabel.text = [NSString stringWithFormat:@"%@", sender.personCreationDate];
    self.modificationDateLabel.text = [NSString stringWithFormat:@"%@", sender.personModificationDate];

    self.organizationLabel.text = sender.personOrganization;
    self.jobTitleLabel.text = sender.personJobTitle;
    self.departamentLabel.text = sender.personDepartament;
    self.emailLabel.text = sender.personEmail;
    self.birthdayLabel.text = [NSString stringWithFormat:@"%@", sender.personBirthday];
    self.noteLabel.text = sender.personNote;
    
    self.streetLabel.text = sender.personAddressStreet;
    self.cityLabel.text = sender.personAddressCity;
    self.zipLabel.text = sender.personAddressZIP;
    self.countryLabel.text = sender.personAddressCountry;
    self.countryCodeLabel.text = sender.personAddressCountryCode;
}

@end