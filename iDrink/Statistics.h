//
//  Statistics.h
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Statistics : NSObject{
    double BACValue;
    NSString *BACMessage;
    NSDate *timeTillSober;
    Person *person;
}

-(void)calculateBAC;
-(void)setPerson:(Person*)newPerson;
-(void)evaluateBAC;
-(void)calculateTimeTillSober;
-(double) getBACNumber;
-(void)setBACNumber:(double)BAC;
-(NSString*) getBACMessage;
-(void)setBACMessage:(NSString*)message;
-(NSDate*)getTimeTillSober;
-(void)setTimeTillSober:(NSDate*)time;

@end
