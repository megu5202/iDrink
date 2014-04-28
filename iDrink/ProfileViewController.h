//
//  ProfileViewController.h
//  BAC Calc
//
//  Created by Melissa on 4/27/14.
//
//

#import "TabBarController.h"

@interface ProfileViewController : TabBarController

@property (nonatomic, retain) IBOutlet UISegmentedControl *gender;
@property (nonatomic, retain) IBOutlet UITextField *weightField;
@property (nonatomic, retain) IBOutlet UITextField *ageField;
@property (nonatomic, retain) IBOutlet UISegmentedControl *frequency;

@property (nonatomic, retain) IBOutlet UIButton *settingsButton;

- (IBAction)genderChanged:(UISegmentedControl *)sender;


/*
+ genderPicker: Toggle
+ weightField: TextBox
+ ageField: TextBox
+ frequency: BitSelect
+ settings: Button
+ settingsOnClick(): void
+ genderChanged(): void
+ weightChanged(): void
+ ageChanged(): void
+ freque cyChanged(): void
*/

@end
