//
//  Person.h
//  BAC Calc
//
//  Created by Luke Connors on 11/6/12.
//
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    double weight;
    NSInteger gender;
    double matabRate;
    double age;
    //UsageSettings *usageSettings;
    NSInteger alarm;
}
//old function
//new refactored functions
-(void) sendAlert:(NSString *) alertTitle : (NSString *) alertMessage;
-(void)setGender:(NSInteger)newGender;
-(void)setAge:(double)newAge;
-(void)setWeight:(double)newWeight;
-(void)checkStats;
-(NSInteger)getGender;
-(double)getWeight;
-(double)getAge;

-(void)updateUsageSettings: (BOOL)locationTracker : (BOOL)drinkingAlarm : (BOOL)drivingSensor;

//@property (nonatomic,strong) NSManagedObjectContext* managedObjectContext;
@end
