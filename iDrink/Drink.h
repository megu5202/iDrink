//
//  Drink.h
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import <Foundation/Foundation.h>
#import "DrinkInfo.h"

@interface Drink : NSObject

@property (nonatomic, retain) DrinkInfo *drink;
@property (nonatomic, retain) NSNumber *amount;
@property (nonatomic, retain) NSDate *time;
//@property (nonatomic, retain) Location *location;

+(void)setDrinkInfo:(DrinkInfo*)info;
+(DrinkInfo*)getDrinkInfo;
+(void)setAmount:(NSNumber*)amoount;
+(void)setTime:(NSDate*)time;
+(NSDate*)getTime;
//+(void)setLocation:(Location*)location;
@end
