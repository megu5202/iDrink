//
//  ProfileViewController.m
//  BAC Calc
//
//  Created by Melissa on 4/27/14.
//
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* called when background is tapped */
- (void)dismissKeyboard{
    [_weightField resignFirstResponder];
    [_ageField resignFirstResponder];
    //[self sendDataToTabViewController];
}

/* called when "DONE" button is pressed in keyboard */
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    //[self sendDataToTabViewController];
    return NO;
}

-(IBAction)genderChanged:(UISegmentedControl *)sender{
    //Call Person.setGender(kjshdfkj)
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
