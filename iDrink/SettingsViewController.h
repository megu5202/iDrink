//
//  SettingsViewController.h
//  iDrink
//
//  Created by Melissa on 4/28/14.
//  Copyright (c) 2014 Melissa. All rights reserved.
//

#import "TabBarController.h"
#import <AddressBookUI/AddressBookUI.h>


@interface SettingsViewController : TabBarController
<ABPeoplePickerNavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *firstName;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumber;

- (IBAction)trackLocation:(UISwitch *)sender;
- (IBAction)stopDrinkingAlarm:(UISwitch *)sender;
- (IBAction)senseDriving:(UISwitch *)sender;
- (IBAction)showPicker:(id)sender;

@end
