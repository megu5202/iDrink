//
//  DrinkViewController.h
//  iDrink
//
//  Created by Melissa on 4/28/14.
//  Copyright (c) 2014 Melissa. All rights reserved.
//

#import "TabBarController.h"
#import "AppDelegate.h"

@interface DrinkViewController : UIViewController
<UIImagePickerControllerDelegate, UINavigationControllerDelegate>{
    AppDelegate *appDelegate;
    Session* session;
    Person* person;
}

@property (weak, nonatomic) IBOutlet UILabel *_drinkName;
@property (weak, nonatomic) IBOutlet UILabel *_drinkABV;
@property (weak, nonatomic) IBOutlet UILabel *_drinkDetails;

- (IBAction)drinkButton:(id)sender;

@property (copy, nonatomic) NSString *drinkType;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *ABV;
@property (copy, nonatomic) NSString *details;

@end
