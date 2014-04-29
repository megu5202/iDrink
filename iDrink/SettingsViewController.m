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
    //hook up background tap to dismiss keyboard function
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget: self
                                   action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)sendDataToPerson{
    [person updateUsageSettings:locationTracker :drinkingAlarm :drivingSensor];
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

/* called when background is tapped */
/* i.e. when weight or age is changed */
- (void)dismissKeyboard{
    NSLog(@"ProfileViewController - dismissKeyboard");
    [self sendDataToPerson];
    [_emergencyContactField resignFirstResponder];
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
