//
//  Statistics.m
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import "Statistics.h"

@implementation Statistics


-(double)calculateBAC: (double)weight :(NSInteger)gender :(int)numDrinks :(double)hoursPassed{
    NSLog(@"Statistics- CalculateBAC");
    double bac = 0;
    double bodyWaterConstant = 0;
    double drinkingPeriod = 1;
    double weightInKilos = weight/2.20462;
    NSInteger genderComp = 1;
    
    if(gender == genderComp){
        bodyWaterConstant = 0.49;
    }
    else{
        bodyWaterConstant = 0.58;
    }
    bac = ((.806 * numDrinks * 1.2)/(bodyWaterConstant * weightInKilos)) - (.017 * drinkingPeriod);
    [self setBACNumber:bac];
    return bac;
}
-(void)evaluateBAC{
    if (BACValue == 0) BACMessage = @"Sober as a bird";
    else if (0.02 < BACValue < 0.03) BACMessage = @"Cheers to alcohol!";
    else if (0.03 <= BACValue < 0.06) BACMessage = @"You're in the zone";
    else if (0.06 <= BACValue < 0.08) BACMessage = @"Feelings of invincibility coming.";
    else if (0.08 <= BACValue < 0.1) BACMessage = @"Over the legal driving limit!";
    else if (0.1 <= BACValue < 0.2) BACMessage = @"You're drunk, at risk of alcohol poisoning, and should not drive!";
    else if (0.2 <= BACValue < 0.3) BACMessage = @"You could black out at any time, and should not drive!";
    else if (0.3 <= BACValue < 0.4) BACMessage = @"You're either unconscious or an alcoholic. Don't drive.";
    else BACMessage = @"So ridiculously dead...";
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
    [self evaluateBAC];
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
