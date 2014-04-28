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
    Statistics *stats;
    Drink *drink;
    int numDrinks;
}

-(void)addDrink;
-(void)removeDrink;

-(int)getNumDrinks;
-(void)setNumDrinks:(int)newNumDrinks;

-(double)getBAC: (double)weight :(NSInteger)gender :(double)hoursPassed;
-(NSString*)getBACMessage;


@end
