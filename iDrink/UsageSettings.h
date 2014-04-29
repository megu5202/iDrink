//
//  UsageSettings.h
//  iDrink
//
//  Created by Jake Charland on 4/28/14.
//  Copyright (c) 2014 Melissa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UsageSettings : NSObject{
    NSInteger alarm;
    NSString* phoneNumber;
}

-(NSString*)getPhoneNumber;
-(void)setPhoneNumber:(NSString*)newPhoneNumber;

-(NSInteger)getAlarm;
-(void)setAlarm:(NSInteger)newAlarm;

@end
