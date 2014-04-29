//
//  MapViewController.h
//  iDrink
//
//  Created by Melissa on 4/28/14.
//  Copyright (c) 2014 Melissa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "AppDelegate.h"


@interface MapViewController : UIViewController
<MKMapViewDelegate>{
    AppDelegate *appDelegate;
}

@property (strong, nonatomic) NSMutableArray *drinksDrank;
@property (strong, nonatomic) IBOutlet UIToolbar *toolBar;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property int didViewDidLoad;
@property Session* session;
@property (strong, nonatomic) NSMutableArray *timesDrank;

- (IBAction)changeMapType:(id)sender;
- (void)displayMap;
- (void)reset;
@end
