//
//  Drink.h
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import <Foundation/Foundation.h>
#import "DrinkInfo.h"

@interface Drink : NSObject{
    DrinkInfo *drink;
    NSNumber *amount;
    NSDate *time;
    //Location *location;
}

-(void)setDrinkInfo:(DrinkInfo*)info;
-(DrinkInfo*)getDrinkInfo;
-(void)setAmount:(NSNumber*)newAmount;
-(void)setTime:(NSDate*)newTime;
-(NSDate*)getTime;
//-(void)setLocation:(Location*)location;
@end
