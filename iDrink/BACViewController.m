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
    
    AppDelegate *appDelegate=[[UIApplication sharedApplication] delegate];
    person = appDelegate.getPerson;
    session = appDelegate.getSession;
    
    NSInteger gender = [person getGender];
    double weight = [person getWeight];
    double age = [person getAge];
    
    //test bac calc
    [session addDrink];
    [session calcBAC:weight :gender :3];
    double bac = [session getBAC];
    int drinksRecorded = [session getNumDrinks];
    NSString *BACMessage = [session getBACMessage];
    
    _genderOut.text = [NSString stringWithFormat:@"%d", gender];
    _weightOut.text = [NSString stringWithFormat:@"%.3f", weight];
    _ageOut.text = [NSString stringWithFormat:@"%.3f", age];
    _bacNumber.text = [NSString stringWithFormat:@"%.3f", bac];
    _drinkCountOut.text = [NSString stringWithFormat:@"%.3d", drinksRecorded];
    NSLog(@"drinks recorded is %d", drinksRecorded);
    _hoursOut.text = [NSString stringWithFormat:@"%.3d", 3];
    _bacMessage.text = [NSString stringWithFormat:@"%@", BACMessage];
    [appDelegate setSession:session];
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
    [self updateLabels];
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
