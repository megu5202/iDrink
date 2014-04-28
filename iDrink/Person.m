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

-(void)setGender:(NSInteger)newGender{
    gender = newGender;
}
-(void)setAge:(double)newAge{
    age = newAge;
}
-(void)setWeight:(double)newWeight{
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
@end
