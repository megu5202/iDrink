//
//  Session.m
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import "Session.h"

@implementation Session

- (id)init{
    self = [super init];
    if(self){
        stats = [[Statistics alloc]init];
        drink = [[Drink alloc]init];
        numDrinks = 0;
    }
    return self;
}

-(void)addDrink{
    numDrinks+= 1;
}

-(void)removeDrink{
    if(numDrinks <= 1){
        numDrinks--;
    }
}

-(int)getNumDrinks{
    return numDrinks;
}

-(void)setNumDrinks:(int)newNumDrinks{
    numDrinks = newNumDrinks;
}

-(double)getBAC: (double)weight :(NSInteger)gender :(double)hoursPassed{
    double BAC = 0.0;
    BAC = [stats calculateBAC:weight :gender :numDrinks :hoursPassed];
    return BAC;
}
-(NSString*)getBACMessage{
    return @"stub";
}

@end
