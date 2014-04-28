//
//  Drink.m
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import "Drink.h"

@implementation Drink

-(void)setDrinkInfo:(DrinkInfo*)info{
    
}
-(DrinkInfo*)getDrinkInfo{
    return drink;
}
-(void)setAmount:(NSNumber*)newAmount{
    amount = newAmount;
}
-(void)setTime:(NSDate*)newTime{
    time = newTime;
}
-(NSDate*)getTime{
    return time;
}
//-(void)setLocation:(Location*)location;


@end
