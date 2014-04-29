//
//  DrinkViewController.m
//  iDrink
//
//  Created by Melissa on 4/28/14.
//  Copyright (c) 2014 Melissa. All rights reserved.
//

#import "DrinkViewController.h"

@interface DrinkViewController ()

@end

@implementation DrinkViewController

- (void) sendAlert:(NSString *) alertTitle : (NSString *) alertMessage{
    UIAlertView* alertView = [[UIAlertView alloc]
                              initWithTitle: alertTitle
                              message: alertMessage
                              delegate:self
                              cancelButtonTitle: @"Ok"
                              otherButtonTitles: nil];
    [alertView show];
}

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
    appDelegate=[[UIApplication sharedApplication] delegate];
    person = appDelegate.getPerson;
    session = appDelegate.getSession;
}

- (void)viewWillAppear:(BOOL)animated{
    __drinkName.text = _name;
    __drinkABV.text = _ABV;
    __drinkDetails.text = _details;
}

- (void)sendDataToTabViewController: (NSString*) drinkName : (NSDate *) currentTime{
    [session addDrink: drinkName : currentTime];
}

- (IBAction)drinkButton:(id)sender {
    //get the current time
    NSDate *now = [NSDate date];
    //send time, and 1 drink increase to updateData
    [self sendDataToTabViewController:_name  : now];
    //go back to add a drink screen or send an alert saying a drink was added
    [self sendAlert:@"Congrats!" :@"Drink was recorded"];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
