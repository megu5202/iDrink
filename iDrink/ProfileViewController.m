//
//  ProfileViewController.m
//  BAC Calc
//
//  Created by Melissa on 4/27/14.
//
//

#import "ProfileViewController.h"
#import "Person.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

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
    //set default gender as not selected
    _gender.selectedSegmentIndex = -1;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillDisappear:(BOOL)animated{
    //NSLog(@"MADFirstViewController - viewWillDisappear");
    //BOOL goodData = [(MADTabViewController*)self.tabBarController checkData];
    //if (!goodData) return; //send me back to this screen, then be done!
}

- (void) sendAlert:(NSString *) alertTitle : (NSString *) alertMessage{
    UIAlertView* alertView = [[UIAlertView alloc]
                              initWithTitle: alertTitle
                              message: alertMessage
                              delegate:self
                              cancelButtonTitle: @"Ok"
                              otherButtonTitles: nil];
    [alertView show];
}

- (void)sendDataToPerson{
    NSLog(@"ProfileViewController - sendDataToPerson");
    //get data from entry fields
    NSInteger gender = _gender.selectedSegmentIndex;
    double weight = [_weightField.text doubleValue];
    double age = [_ageField.text doubleValue];
    
    //warn under 21 year olds
    if (age > 0 && age < 21){
        [self sendAlert:@"Watch Yourself" : @"The creator of this application is not to be held responsible for any illegal actions you participate in."];
    }
    //check that someone isnt making a stupid weight
    if (weight > 0 && weight < 25){
        [self sendAlert:@"Error" : @"I think you weigh more than that..."];
        _weightField.text = @"";
    }
    if (weight > 0 && weight > 400){
        [self sendAlert:@"Error" : @"You can't seriously weigh that much..."];
        _weightField.text = @"";
    }
    
    //update data:
    [(Person*)self.tabBarController setGender:gender];
    [(Person*)self.tabBarController setWeight:weight];
    [(Person*)self.tabBarController setAge:age];
}

/* called when background is tapped */
- (void)dismissKeyboard{
    NSLog(@"ProfileViewController - dismissKeyboard");
    [self sendDataToPerson];
    [_weightField resignFirstResponder];
    [_ageField resignFirstResponder];
}

-(IBAction)genderChanged:(UISegmentedControl *)sender{
    NSLog(@"ProfileViewController - genderChanged");
    [self sendDataToPerson];
}

-(IBAction)frequencyChanged:(UISegmentedControl *)sender{
    NSLog(@"ProfileViewController - frequencyChanged");
    [self sendDataToPerson];
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
