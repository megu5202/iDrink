//
//  ProfileViewController.h
//  BAC Calc
//
//  Created by Melissa on 4/27/14.
//
//

#import "AppDelegate.h"
#import "TabBarController.h"

@interface ProfileViewController:TabBarController{
    AppDelegate *appDelegate;
}

@property (nonatomic, retain) IBOutlet UISegmentedControl *gender;
@property (weak, nonatomic) IBOutlet UITextField *weightField;
@property (weak, nonatomic) IBOutlet UITextField *ageField;
@property (nonatomic, retain) IBOutlet UISegmentedControl *frequency;

- (IBAction)genderChanged:(UISegmentedControl *)sender;
- (IBAction)frequencyChanged:(UISegmentedControl *)sender;

@property (nonatomic, retain) IBOutlet UIButton *settingsButton;

@end
