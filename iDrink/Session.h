//
//  Session.h
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import <Foundation/Foundation.h>
#import "Statistics.h"

@interface Session : NSObject
@property (nonatomic, retain) NSMutableArray *drinksDrank;
@property (nonatomic, retain) Statistics *stats;

+(void)addDrink;
+(void)removeDrink;

@end
