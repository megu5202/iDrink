//
//  Statistics.h
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import <Foundation/Foundation.h>

@interface Statistics : NSObject
@property (nonatomic, retain) NSNumber *BACValue;
@property (nonatomic, retain) NSString *BACMessage;
@property (nonatomic, retain) NSDate *timeTillSober;

+(void)calculateBAC;
+(void)evaluateBAC;
+(void)calculateTimeTillSober;
+(NSNumber*) getBACNumber;
+(void)setBACNumber:(NSNumber*)BAC;
+(NSString*) getBACMessage;
+(void)setBACMessage:(NSString*)message;
+(NSDate*)getTimeTillSober;
+(void)setTimeTillSober:(NSDate*)time;

@end
