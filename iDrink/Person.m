//
//  Person.m
//  BAC Calc
//
//  Created by Luke Connors on 11/6/12.
//
//

#import "Person.h"

@implementation Person

-(id)initWithGender:(NSString *)gender personWeight:(NSNumber *)weight
{
    self = [super init];
    if (self) {
        _gender = gender;
        _weight = [NSNumber numberWithFloat: [weight floatValue]];
        _matabRate = [NSNumber numberWithFloat:(0.015/60/60)];
        _alarm = 0;
    }
    
    return self;
}

+(void)setGender:(NSString*)newGender{
    
}
+(void)setAge:(NSNumber*)age{
    
}
+(void)setWeight:(NSNumber*)weight{
    
}
+(void)checkStats{
    
}
+(void)newSession{
    
}
+(void)deleteSession{
    
}
+(NSString*)getGender{
    
}
+(NSNumber*)getWeight{
    
}
+(NSNumber*)getAge{
    
}
+(Session*)getSession{
    
}


@end
