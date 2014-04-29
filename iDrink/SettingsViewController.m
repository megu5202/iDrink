//
//  SettingsViewController.m
//  iDrink
//
//  Created by Melissa on 4/28/14.
//  Copyright (c) 2014 Melissa. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController (){
    BOOL locationTracker; //0 off, 1 on
    BOOL drinkingAlarm; //0 off, 1 on
    BOOL drivingSensor; //0 off, 1 on
    NSString* phoneNumber;
}

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)sendDataToPerson{
    NSLog(@"SettingsViewController - sendDataToPerson");
    [person updateUsageSettings:locationTracker :drinkingAlarm :drivingSensor: phoneNumber];
}

- (IBAction)trackLocation:(UISwitch *)sender {
    if ([sender isOn]) {
        NSLog(@"location is on!");
        locationTracker = true;
    } else {
        NSLog(@"location is off!");
        locationTracker = false;
    }
    [self sendDataToPerson];
}

- (IBAction)stopDrinkingAlarm:(UISwitch *)sender {
    if ([sender isOn]) {
        NSLog(@"drinking alarm is on!");
        drinkingAlarm = true;
    } else {
        NSLog(@"drinking alarm is off!");
        drinkingAlarm = false;
    }
    [self sendDataToPerson];
}

- (IBAction)senseDriving:(UISwitch *)sender {
    if ([sender isOn]) {
        NSLog(@"driving sensor is on!");
        drivingSensor = true;
    } else {
        NSLog(@"driving sensor is off!");
        drivingSensor = false;
    }
    [self sendDataToPerson];
}

- (void)displayPerson:(ABRecordRef)selectedPerson{
    NSLog(@"SettingsViewController - displayPerson");
    NSString* name = (__bridge_transfer NSString*)ABRecordCopyValue(selectedPerson, kABPersonFirstNameProperty);
    self.firstName.text = name;
    
    phoneNumber = nil;
    ABMultiValueRef phoneNumbers = ABRecordCopyValue(selectedPerson, kABPersonPhoneProperty);
    if (ABMultiValueGetCount(phoneNumbers) > 0) {
        phoneNumber = (__bridge_transfer NSString*)ABMultiValueCopyValueAtIndex(phoneNumbers, 0);
    } else {
        phoneNumber = @"[None]";
    }
    
    self.phoneNumber.text = phoneNumber;
    CFRelease(phoneNumbers);
    [self sendDataToPerson];
}

- (IBAction)showPicker:(id)sender{
    NSLog(@"SettingsViewController - showPicker");
    ABPeoplePickerNavigationController *picker =
    [[ABPeoplePickerNavigationController alloc] init];
    picker.peoplePickerDelegate = self;
    [self presentViewController:picker animated:YES completion:nil];
}

- (BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker
      shouldContinueAfterSelectingPerson:(ABRecordRef)selectedPerson {
    
    [self displayPerson:selectedPerson];
    [self dismissViewControllerAnimated:YES completion:nil];
    
    return NO;
}

- (BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker
      shouldContinueAfterSelectingPerson:(ABRecordRef)person
                                property:(ABPropertyID)property
                              identifier:(ABMultiValueIdentifier)identifier{
    return NO;
}

- (void)peoplePickerNavigationControllerDidCancel:(ABPeoplePickerNavigationController *)peoplePicker{
    [self dismissViewControllerAnimated:YES completion:nil];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
