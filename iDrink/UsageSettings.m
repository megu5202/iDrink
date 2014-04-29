//
//  UsageSettings.m
//  iDrink
//
//  Created by Jake Charland on 4/28/14.
//  Copyright (c) 2014 Melissa. All rights reserved.
//

#import "UsageSettings.h"

@implementation UsageSettings

-(NSString*)getPhoneNumber{
    return phoneNumber;
}
-(void)setPhoneNumber:(NSString*)newPhoneNumber{
    phoneNumber = newPhoneNumber;
}

-(NSInteger)getAlarm{
    return alarm;
}
-(void)setAlarm:(NSInteger)newAlarm{
    alarm = newAlarm;
}

@end
