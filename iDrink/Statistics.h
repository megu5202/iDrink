//
//  Statistics.h
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import <Foundation/Foundation.h>

@interface Statistics : NSObject{
    double BACValue;
    NSString *BACMessage;
    NSDate *timeTillSober;
}

-(void)evaluateBAC;
-(double)calculateBAC: (double)weight :(NSInteger)gender :(int)numDrinks :(double)hoursPassed;
-(void)calculateTimeTillSober;
-(double)getBACNumber;
-(void)setBACNumber:(double)BAC;
-(NSString*) getBACMessage;
-(void)setBACMessage:(NSString*)message;
-(NSDate*)getTimeTillSober;
-(void)setTimeTillSober:(NSDate*)time;

@end
