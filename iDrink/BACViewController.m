//
//  BACViewController.m
//  BAC Calc
//
//  Created by Melissa on 4/27/14.
//
//

#import "BACViewController.h"

@interface BACViewController ()

@end

@implementation BACViewController

- (void)updateLabels{
    NSLog(@"BACViewController - updateLabels");
    //calculate the current BAC
    //[(MADTabViewController*)self.tabBarController updateBAC];
    /*
    //get all the data from storage
    NSInteger gender = [(MADTabViewController*)self.tabBarController getGender];
    double weight = [(MADTabViewController*)self.tabBarController getWeight];
    double age = [(MADTabViewController*)self.tabBarController getAge];
    double drinks = [(MADTabViewController*)self.tabBarController getDrinkCount];
    double hours = [(MADTabViewController*)self.tabBarController getHours];
    float bac = [(MADTabViewController*)self.tabBarController getBAC];
    NSString *bacMessage = [(MADTabViewController*)self.tabBarController getDrunkenness];
    
    //fill in values
    _genderOut.text = [NSString stringWithFormat:@"%d", gender];
    _weightOut.text = [NSString stringWithFormat:@"%.3f", weight];
    _ageOut.text = [NSString stringWithFormat:@"%.3f", age];
    _drinkCountOut.text = [NSString stringWithFormat:@"%.3f", drinks];
    _hoursOut.text = [NSString stringWithFormat:@"%.3f", hours];
    
    if (bac > 1.0) _bacNumber.text = [NSString stringWithFormat:@"%.3f", 1.000];
    else if (bac < 0.0) _bacNumber.text = [NSString stringWithFormat:@"%.3f", 0.000];
    else _bacNumber.text = [NSString stringWithFormat:@"%.3f", bac];
    
    _bacMessage.text = bacMessage;
     */
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/* first time this view is loaded after the app starts */
- (void)viewDidLoad{
    NSLog(@"BACViewController - viewDidLoad");
    [super viewDidLoad];
}

/* every time this view is loaded */
-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"BACViewController - viewWillAppear");
    [self updateLabels];
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
