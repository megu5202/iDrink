//
//  Drink.h
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import <Foundation/Foundation.h>
#import "DrinkInfo.h"
#import <CoreLocation/CoreLocation.h>


@interface Drink : NSObject{
    DrinkInfo *drink;
    NSNumber *amount;
    NSDate *time;
    CLLocation *location;
}

-(void)setDrinkInfo:(DrinkInfo*)info;
-(DrinkInfo*)getDrinkInfo;
-(void)setAmount:(NSNumber*)newAmount;
-(void)setTime:(NSDate*)newTime;
-(NSDate*)getTime;
-(void)setLocation:(CLLocation*)drinkLocation;
-(CLLocation*)getLocation;
@end
