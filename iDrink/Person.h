//
//  Person.h
//  BAC Calc
//
//  Created by Luke Connors on 11/6/12.
//
//

#import <Foundation/Foundation.h>
#import "Session.h"

@interface Person : NSObject{
    NSNumber *weight;
    NSString *gender;
    NSNumber *matabRate;
    NSNumber *age;
    Session *session;
    //UsageSettings *usageSettings;
    NSInteger alarm;
}
//old function
//new refactored functions
-(void) sendAlert:(NSString *) alertTitle : (NSString *) alertMessage;
-(void)setGender:(NSString*)newGender;
-(void)setAge:(NSNumber*)newAge;
-(void)setWeight:(NSNumber*)newWeight;
-(void)checkStats;
-(NSString*)getGender;
-(NSNumber*)getWeight;
-(NSNumber*)getAge;
-(Session*)getSession;
@end
