//
//  Statistics.h
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import <Foundation/Foundation.h>

@interface Statistics : NSObject{
    NSNumber *BACValue;
    NSString *BACMessage;
    NSDate *timeTillSober;
}

-(void)calculateBAC;
-(void)evaluateBAC;
-(void)calculateTimeTillSober;
-(NSNumber*) getBACNumber;
-(void)setBACNumber:(NSNumber*)BAC;
-(NSString*) getBACMessage;
-(void)setBACMessage:(NSString*)message;
-(NSDate*)getTimeTillSober;
-(void)setTimeTillSober:(NSDate*)time;

@end
