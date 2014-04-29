//
//  BACViewController.h
//  BAC Calc
//
//  Created by Melissa on 4/27/14.
//
//

#import "TabBarController.h"
#import "AppDelegate.h"

@interface BACViewController : TabBarController{
    AppDelegate *appDelegate;
}

@property (weak, nonatomic) IBOutlet UILabel *genderOut;
@property (weak, nonatomic) IBOutlet UILabel *weightOut;
@property (weak, nonatomic) IBOutlet UILabel *ageOut;
@property (weak, nonatomic) IBOutlet UILabel *drinkCountOut;
@property (weak, nonatomic) IBOutlet UILabel *hoursOut;
@property (weak, nonatomic) IBOutlet UILabel *bacNumber;
@property (weak, nonatomic) IBOutlet UILabel *bacMessage;
@property (weak, nonatomic) IBOutlet UILabel *timeTillSober;

- (IBAction)addDrinkButton:(UIButton *)sender;
- (IBAction)removeDrinkButton:(UIButton *)sender;
- (IBAction)addHourButton:(UIButton *)sender;
- (IBAction)removeHourButton:(UIButton *)sender;

@end
