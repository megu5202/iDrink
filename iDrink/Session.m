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
        drinksDrank = [[NSMutableArray alloc]init];
        timesDrank = [[NSMutableArray alloc]init];
        locationsDrank = [[NSMutableArray alloc]init];
        stats = [[Statistics alloc]init];
        drink = [[Drink alloc]init];
        numDrinks = 0;
        hours = 0;
    }
    return self;
}

-(void)addDrink: (NSString*)drinkName : (NSDate*)time /*: (CLLocation*)location*/
{
    numDrinks += 1;
    [drinksDrank addObject:drinkName];
    [timesDrank addObject:time];
    //[locationsDrank addObject:location];
    
}

-(void)removeDrink{
    if(numDrinks <= 1){
        numDrinks-=1;
    }
}

-(int)getNumDrinks{
    return numDrinks;
}

-(void)setNumDrinks:(int)newNumDrinks{
    numDrinks = newNumDrinks;
}

-(double)getBAC{
    return [stats getBACNumber];
}

-(double)calcBAC: (double)weight :(NSInteger)gender :(double)hoursPassed{
    double BAC = 0.0;
    BAC = [stats calculateBAC:weight :gender :numDrinks :hoursPassed];
    return BAC;
}

-(NSString*)getBACMessage{
    return [stats getBACMessage];
}

-(NSMutableArray*)getDrinksDrank{
    return drinksDrank;
}

-(NSMutableArray*)getTimesDrank{
    return timesDrank;
}


-(void)removeHours{
    if(hours <=1){
        hours-= 1;
    }
}
-(int)getHours{
    return hours;
}
-(void)addHours{
    hours+= 1;
}

@end
