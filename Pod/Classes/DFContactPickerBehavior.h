//
//  DFContactPickerBehavior.h
//  Pods
//
//  Created by DigitalFormsMacbook on 19.04.2015.
//
//

#import <Foundation/Foundation.h>
#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>
#import "DFBehavior.h"

@interface DFContactPickerBehavior : DFBehavior <ABPeoplePickerNavigationControllerDelegate>

@property (nonatomic, strong) NSString *personFirstName;
@property (nonatomic, strong) NSString *personMiddleName;
@property (nonatomic, strong) NSString *personLasttName;

@property (nonatomic, strong) NSString *personPrefix;
@property (nonatomic, strong) NSString *personSufix;

@property (nonatomic, strong) NSString *personNickname;
@property (nonatomic, strong) NSString *personFirstNamePhonetic;
@property (nonatomic, strong) NSString *personLastNamePhonetic;
@property (nonatomic, strong) NSString *personMiddleNamePhonetic;

@property (nonatomic, strong) NSString *personOrganization;
@property (nonatomic, strong) NSString *personJobTitle;
@property (nonatomic, strong) NSString *personDepartament;
@property (nonatomic, strong) NSArray *personEmail;
@property (nonatomic, strong) NSDate *personBirthday;
@property (nonatomic, strong) NSString *personNote;

@property (nonatomic, strong) NSDate *personCreationDate;
@property (nonatomic, strong) NSDate *personModificationDate;

@property (nonatomic, strong) NSString *personAddressStreet;
@property (nonatomic, strong) NSString *personAddressCity;
@property (nonatomic, strong) NSString *personAddressState;
@property (nonatomic, strong) NSString *personAddressZIP;
@property (nonatomic, strong) NSString *personAddressCountry;
@property (nonatomic, strong) NSString *personAddressCountryCode;

@property (nonatomic, strong) NSData *personPhoto;

@property (nonatomic, strong) NSArray *personPhoneNumbers;

/**
 *  @brief IBAction method that allows to pick contact from all contacts.
 *
 *  @param button
 */

- (IBAction)chooseContactButtonAction:(UIButton *)button;

@end