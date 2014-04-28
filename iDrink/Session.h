//
//  Session.h
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import <Foundation/Foundation.h>
#import "Statistics.h"

@interface Session : NSObject{
    NSMutableArray *drinksDrank;
    Statistics *stats;
    int numDrinks;

}

+(void)addDrink;
+(void)removeDrink;
-(int)getNumDrinks;

@end
