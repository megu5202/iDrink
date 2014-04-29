//
//  BACViewController.m
//  BAC Calc
//
//  Created by Melissa on 4/27/14.
//
//

#import "BACViewController.h"
#import <UIKit/UIKit.h>


@interface BACViewController ()

@end

@implementation BACViewController
@synthesize location;
@synthesize drunkIcon;

- (void)updateLabels{
    NSLog(@"BACViewController - updateLabels");
    
    NSInteger gender = [person getGender];
    double weight = [person getWeight];
    double age = [person getAge];
    int hours = [session getHours];
    
    //test bac calc
    [session calcBAC:weight :gender :hours];
    double bac = [session getBAC];
    if (isnan(bac)){
        bac = 0.000;
    }
    int drinks = [session getNumDrinks];
    NSString *BACMessage = [session getBACMessage];
    
    _genderOut.text = [NSString stringWithFormat:@"%ld", (long)gender];
    _weightOut.text = [NSString stringWithFormat:@"%.3f", weight];
    _ageOut.text = [NSString stringWithFormat:@"%.3f", age];
    _bacNumber.text = [NSString stringWithFormat:@"%.3f", bac];
    _drinkCountOut.text = [NSString stringWithFormat:@"%.3d", drinks];
    _hoursOut.text = [NSString stringWithFormat:@"%.3d", hours];
    _bacMessage.text = [NSString stringWithFormat:@"%@", BACMessage];
    if(bac >= .08){
        UIImage* photo = [UIImage imageNamed:[NSString stringWithFormat:@"drunk.png"]];
        drunkIcon.image = photo;
    }
    else{
        UIImage* photo = [UIImage imageNamed:[NSString stringWithFormat:@"sober.png"]];
        drunkIcon.image = photo;
    }
    
    [appDelegate setSession:session];
}

- (void)calculateBAC{
    double weight = [person getWeight];
    NSInteger gender = [person getGender];
    int hours = [session getHours];
    [session calcBAC:weight :gender :hours];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)addDrinkButton:(UIButton *)sender {
    //ADD CODE TO ADD DRINK TO THE DRINKS LIST HERE IF IT ISNT ALREADY NICK*****************
    
    NSDate *now = [NSDate date];
    //find current location here
    [session addDrink:@"drinkTest" :now /*:location*/];
    [self calculateBAC];
    [self updateLabels];
}

- (IBAction)removeDrinkButton:(UIButton *)sender {
    [session removeDrink];
    [self calculateBAC];
    [self updateLabels];
}

- (IBAction)addHourButton:(UIButton *)sender {
    [session addHours];
    [self calculateBAC];
    [self updateLabels];
}

- (IBAction)removeHourButton:(UIButton *)sender {
    [session removeHours];
    [self calculateBAC];
    [self updateLabels];
}

/* first time this view is loaded after the app starts */
- (void)viewDidLoad{
    NSLog(@"BACViewController - viewDidLoad");
    [super viewDidLoad];
    
    appDelegate=[[UIApplication sharedApplication] delegate];
    person = appDelegate.getPerson;
    session = appDelegate.getSession;
    
    locationManager = [CLLocationManager new];
    locationManager.delegate = self;
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [self CurrentLocationIdentifier];
    
    [self updateLabels];
}

-(void)CurrentLocationIdentifier
{

    [locationManager startUpdatingLocation];
}

/* every time this view is loaded */
-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"BACViewController - viewWillAppear");
    [self updateLabels];
    [self CurrentLocationIdentifier];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//==================================================================================================

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    location = [locations lastObject];
    NSLog(@"lat%f - lon%f", location.coordinate.latitude, location.coordinate.longitude);
    [locationManager stopUpdatingLocation];
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
