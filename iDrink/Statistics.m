//
//  Statistics.m
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import "Statistics.h"

@implementation Statistics

-(void)setPerson:(Person*)newPerson{
    person = newPerson;
}

-(void)calculateBAC{
    NSLog(@"updateBAC");
    int bac = 0;
    double genderConstant = -1;
    NSString *gender = person.getGender;
    NSNumber *weight = person.getWeight;
    Session *session = person.getSession;
    NSNumber *drinksDrank = session.getNumDrinks;
    int bodyWaterConstant = 0;
    int drinkingPeriod = 0;
    
    
    if([gender  isEqual: @"male"]){
        bodyWaterConstant = 0.58;
    }
    else{
        bodyWaterConstant = 0.49;
    }
    
    bac = (.806 * drinksDrank * 1.2)/(bodyWaterConstant * )
}
-(void)evaluateBAC{
    
}
-(void)calculateTimeTillSober{
    
}
-(NSNumber*) getBACNumber{
    return BACValue;
}
-(void)setBACNumber:(NSNumber*)newBAC{
    BACValue = newBAC;
}
-(NSString*) getBACMessage{
    return BACMessage;
}
-(void)setBACMessage:(NSString*)newMessage{
    BACMessage = newMessage;
}
-(NSDate*)getTimeTillSober{
    return timeTillSober;
}
-(void)setTimeTillSober:(NSDate*)time{
    timeTillSober = time;
}

@end
