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
    self.personFirstName = (__bridge NSString *)ABRecordCopyValue(person, kABPersonFirstNameProperty);
    self.personMiddleName = (__bridge NSString *)ABRecordCopyValue(person, kABPersonMiddleNameProperty);
    self.personLasttName = (__bridge NSString *)ABRecordCopyValue(person, kABPersonLastNameProperty);
    
    self.personPrefix = (__bridge NSString *)ABRecordCopyValue(person, kABPersonPrefixProperty);
    self.personFirstNamePhonetic = (__bridge NSString *)ABRecordCopyValue(person, kABPersonFirstNamePhoneticProperty);
    self.personLastNamePhonetic = (__bridge NSString *)ABRecordCopyValue(person, kABPersonLastNamePhoneticProperty);
    self.personMiddleNamePhonetic = (__bridge NSString *)ABRecordCopyValue(person, kABPersonMiddleNamePhoneticProperty);
    
    self.personOrganization = (__bridge NSString *)ABRecordCopyValue(person, kABPersonOrganizationProperty);
    self.personJobTitle = (__bridge NSString *)ABRecordCopyValue(person, kABPersonJobTitleProperty);
    self.personDepartament = (__bridge NSString *)ABRecordCopyValue(person, kABPersonDepartmentProperty);
    
    ABMutableMultiValueRef email = ABRecordCopyValue( person, kABPersonEmailProperty );
    CFStringRef emailRef = ABMultiValueCopyValueAtIndex(email, 0);
    
    self.personEmail = (__bridge NSString *)emailRef;
    self.personBirthday = (__bridge NSDate *)ABRecordCopyValue(person, kABPersonBirthdayProperty);
    self.personNote = (__bridge NSString *)ABRecordCopyValue(person, kABPersonNoteProperty);
    
    self.personCreationDate = (__bridge NSDate *)ABRecordCopyValue(person, kABPersonCreationDateProperty);
    self.personModificationDate = (__bridge NSDate *)ABRecordCopyValue(person, kABPersonModificationDateProperty);
    
    CFTypeRef addressProperty = ABRecordCopyValue((ABRecordRef)person, kABPersonAddressProperty);
    
    if (addressProperty)
    {
        NSDictionary *addressDict = (__bridge NSDictionary *)CFArrayGetValueAtIndex((CFArrayRef)ABMultiValueCopyArrayOfAllValues(addressProperty), 0);
        
        if (addressDict[@"Street"]) self.personAddressStreet = addressDict[@"Street"];
        if (addressDict[@"City"]) self.personAddressCity = addressDict[@"City"];
        if (addressDict[@"State"]) self.personAddressState = addressDict[@"State"];
        if (addressDict[@"ZIP"]) self.personAddressZIP = addressDict[@"ZIP"];
        if (addressDict[@"Country"]) self.personAddressCountry = addressDict[@"Country"];
        if (addressDict[@"CountryCode"]) self.personAddressCountryCode = addressDict[@"CountryCode"];
    }
    
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Person data -> first name: %@ last name: %@ creation date: %@ modification date: %@", self.personFirstName, self.personLasttName, self.personCreationDate, self.personModificationDate];
}

@end
