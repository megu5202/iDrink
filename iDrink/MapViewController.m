//
//  MapViewController.m
//  iDrink
//
//  Created by Melissa on 4/28/14.
//  Copyright (c) 2014 Melissa. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController
@synthesize drinksDrank;
@synthesize timesDrank;
@synthesize toolBar;
@synthesize didViewDidLoad;
@synthesize session;

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
    [self.mapView setDelegate:self];
    _mapView.showsUserLocation = NO;
    
    appDelegate=[[UIApplication sharedApplication] delegate];
    session = appDelegate.getSession;
    drinksDrank = [session getDrinksDrank];
    timesDrank = [session getTimesDrank];
    
    if(drinksDrank.count > 0){
        for(int i=0; i<drinksDrank.count; i++)
        {
            
        }
    }
    
    


}

- (void)viewWillAppear:(BOOL)animated{
    drinksDrank = [session getDrinksDrank];
    timesDrank = [session getTimesDrank];
    [self.mapView reloadInputViews];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeMapType:(id)sender {
    if(_mapView.mapType == MKMapTypeStandard){
        _mapView.mapType = MKMapTypeSatellite;
    }
    else {
        _mapView.mapType = MKMapTypeStandard;
    }
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
