//
//  Session.h
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import <Foundation/Foundation.h>
#import "Statistics.h"
#import "Drink.h"

@interface Session : NSObject{
    NSMutableArray *drinksDrank;
    NSMutableArray *timesDrank;
    Statistics *stats;
    Drink *drink;
    int numDrinks;
    int hours;
}

-(void)addDrink: (NSString*)drinkName : (NSDate*)time;
-(void)removeDrink;

-(void)addHours;
-(void)removeHours;
-(int)getHours;

-(int)getNumDrinks;
-(void)setNumDrinks:(int)newNumDrinks;

-(double)getBAC;
-(double)calcBAC: (double)weight :(NSInteger)gender :(double)hoursPassed;
-(NSString*)getBACMessage;

-(NSMutableArray*)getDrinksDrank;
-(NSMutableArray*)getTimesDrank;



@end
