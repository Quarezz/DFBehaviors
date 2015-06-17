//
//  DFContactPickerBehavior.m
//  Pods
//
//  Created by DigitalFormsMacbook on 19.04.2015.
//
//

#import "DFContactPickerBehavior.h"

@implementation DFContactPickerBehavior

- (void)chooseContactButtonAction:(id)button
{
    ABPeoplePickerNavigationController *personViewController = [[ABPeoplePickerNavigationController alloc] init];
    personViewController.peoplePickerDelegate = self;
    [self.owner presentViewController:personViewController animated:YES completion:nil];
}

#pragma mark - ABPeoplePickerDelegate

- (void)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker didSelectPerson:(ABRecordRef)person
{
    self.personFirstName = (__bridge_transfer NSString *)ABRecordCopyValue(person, kABPersonFirstNameProperty);
    self.personMiddleName = (__bridge_transfer NSString *)ABRecordCopyValue(person, kABPersonMiddleNameProperty);
    self.personLasttName = (__bridge_transfer NSString *)ABRecordCopyValue(person, kABPersonLastNameProperty);
    
    self.personPrefix = (__bridge_transfer NSString *)ABRecordCopyValue(person, kABPersonPrefixProperty);
    self.personFirstNamePhonetic = (__bridge_transfer NSString *)ABRecordCopyValue(person, kABPersonFirstNamePhoneticProperty);
    self.personLastNamePhonetic = (__bridge_transfer NSString *)ABRecordCopyValue(person, kABPersonLastNamePhoneticProperty);
    self.personMiddleNamePhonetic = (__bridge_transfer NSString *)ABRecordCopyValue(person, kABPersonMiddleNamePhoneticProperty);
    
    self.personOrganization = (__bridge_transfer NSString *)ABRecordCopyValue(person, kABPersonOrganizationProperty);
    self.personJobTitle = (__bridge_transfer NSString *)ABRecordCopyValue(person, kABPersonJobTitleProperty);
    self.personDepartament = (__bridge_transfer NSString *)ABRecordCopyValue(person, kABPersonDepartmentProperty);
    
    self.personBirthday = (__bridge_transfer NSDate *)ABRecordCopyValue(person, kABPersonBirthdayProperty);
    self.personNote = (__bridge_transfer NSString *)ABRecordCopyValue(person, kABPersonNoteProperty);
    
    self.personCreationDate = (__bridge_transfer NSDate *)ABRecordCopyValue(person, kABPersonCreationDateProperty);
    self.personModificationDate = (__bridge_transfer NSDate *)ABRecordCopyValue(person, kABPersonModificationDateProperty);
    
    CFTypeRef emailProperty = ABRecordCopyValue(person, kABPersonEmailProperty);
    
    if (emailProperty)
    {
        self.personEmail = (__bridge NSArray *)ABMultiValueCopyArrayOfAllValues(emailProperty);
    }
    
    CFTypeRef addressProperty = ABRecordCopyValue(person, kABPersonAddressProperty);
    
    if (addressProperty)
    {
        NSArray *address = (__bridge NSArray *)ABMultiValueCopyArrayOfAllValues(addressProperty);
        
        for (NSDictionary *addressDict in address) {
            if (addressDict[@"Street"]) self.personAddressStreet = addressDict[@"Street"];
            if (addressDict[@"City"]) self.personAddressCity = addressDict[@"City"];
            if (addressDict[@"State"]) self.personAddressState = addressDict[@"State"];
            if (addressDict[@"ZIP"]) self.personAddressZIP = addressDict[@"ZIP"];
            if (addressDict[@"Country"]) self.personAddressCountry = addressDict[@"Country"];
            if (addressDict[@"CountryCode"]) self.personAddressCountryCode = addressDict[@"CountryCode"];
        }
        
        CFBridgingRelease((__bridge CFTypeRef)(address));
    }
    
    CFBridgingRelease(addressProperty);
    
    if (person != nil && ABPersonHasImageData(person))
    {
        if ( &ABPersonCopyImageDataWithFormat != nil ) {
            self.personPhoto = (__bridge_transfer NSData *)ABPersonCopyImageDataWithFormat(person, kABPersonImageFormatThumbnail);
        }
    }
    else
    {
        self.personPhoto = nil;
    }
    
    ABMultiValueRef phones = ABRecordCopyValue(person, kABPersonPhoneProperty);
    NSString* mobileLabel;
    NSMutableArray *phoneNumbers = [NSMutableArray array];
    for(CFIndex i = 0; i < ABMultiValueGetCount(phones); i++) {
        mobileLabel = (__bridge_transfer NSString*)ABMultiValueCopyLabelAtIndex(phones, i);
        if([mobileLabel isEqualToString:(NSString *)kABPersonPhoneMobileLabel])
        {
            [phoneNumbers addObject:(__bridge_transfer NSString*)ABMultiValueCopyValueAtIndex(phones, i)];
        }
    }
    
    CFBridgingRelease(phones);
    
    self.personPhoneNumbers = phoneNumbers;
    
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Person data -> first name: %@ last name: %@ creation date: %@ modification date: %@", self.personFirstName, self.personLasttName, self.personCreationDate, self.personModificationDate];
}

@end
