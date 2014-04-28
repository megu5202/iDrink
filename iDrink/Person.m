//
//  Person.m
//  BAC Calc
//
//  Created by Luke Connors on 11/6/12.
//
//

#import "Person.h"

@implementation Person

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

-(void)setGender:(NSString*)newGender{
    gender = newGender;
}
-(void)setAge:(NSNumber*)newAge{
    age = newAge;
}
-(void)setWeight:(NSNumber*)newWeight{
    weight = newWeight;
}
-(void)checkStats{
    NSNumber *weightMin = [NSNumber numberWithInt:20];
    NSNumber *ageMin = [NSNumber numberWithInt:20];
    if (age >= ageMin && weight > weightMin) {
        //age is good
    }
    else{
        [self sendAlert:@"Error" : @"Please enter a valid weight or age."];
    }
}
-(NSString*)getGender{
    return gender;
}
-(NSNumber*)getWeight{
    return weight;
}
-(NSNumber*)getAge{
    return age;
}
-(Session*)getSession{
    return session;
}


@end
