//
//  Person.m
//  BAC Calc
//
//  Created by Luke Connors on 11/6/12.
//
//

#import "Person.h"

@implementation Person
//@synthesize managedObjectContext;

- (void) sendAlert:(NSString *) alertTitle : (NSString *) alertMessage{
    UIAlertView* alertView = [[UIAlertView alloc]
                              initWithTitle: alertTitle
                              message: alertMessage
                              delegate:self
                              cancelButtonTitle: @"Ok"
                              otherButtonTitles: nil];
    [alertView show];
    // *********** if alert title is "error" - make first view appear!
}

-(void)setGender:(NSInteger)newGender{
    NSLog(@"Person - setGender");
    gender = newGender;
}
-(void)setAge:(double)newAge{
    NSLog(@"Person - setAge");
    age = newAge;
}
-(void)setWeight:(double)newWeight{
    NSLog(@"Person - setWeight");
    weight = newWeight;
}
-(void)checkStats{
    double weightMin = 20.0;
    double ageMin = 21.0;
    if (age >= ageMin && weight > weightMin) {
        //age is good
    }
    else{
        [self sendAlert:@"Error" : @"Please enter a valid weight or age."];
    }
}
-(NSInteger)getGender{
    return gender;
}
-(double)getWeight{
    return weight;
}
-(double)getAge{
    return age;
}

-(void)updateUsageSettings: (BOOL)locationTracking : (BOOL)drinkingAlarm : (BOOL)drivingSensor{
    
}
@end
