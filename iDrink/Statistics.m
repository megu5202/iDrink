//
//  Statistics.m
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import "Statistics.h"

@implementation Statistics


-(void)calculateBAC: (double)weight: (NSInteger*)gender: (double)numDrinks: (double)hoursPassed{
    NSLog(@"updateBAC");
    double bac = 0;
    double bodyWaterConstant = 0;
    double drinkingPeriod = 1;
    double weightInKilos = weight/2.20462;
    
    if(gender == 1){
        bodyWaterConstant = 0.49;
    }
    else{
        bodyWaterConstant = 0.58;
    }
    bac = ((.806 * numDrinks * 1.2)/(bodyWaterConstant * weightInKilos)) - (.017 * drinkingPeriod);
    [self setBACNumber:bac];
}
-(void)evaluateBAC{
    
}
-(void)calculateTimeTillSober{
    
}
-(double) getBACNumber{
    return BACValue;
}
-(void)setBACNumber:(double)newBAC{
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
