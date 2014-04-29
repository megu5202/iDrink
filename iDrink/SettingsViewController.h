//
//  SettingsViewController.h
//  iDrink
//
//  Created by Melissa on 4/28/14.
//  Copyright (c) 2014 Melissa. All rights reserved.
//

#import "TabBarController.h"

@interface SettingsViewController : TabBarController

- (IBAction)trackLocation:(UISwitch *)sender;
- (IBAction)stopDrinkingAlarm:(UISwitch *)sender;
- (IBAction)senseDriving:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UITextField *emergencyContactField;


@end
