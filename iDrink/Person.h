//
//  Person.h
//  BAC Calc
//
//  Created by Luke Connors on 11/6/12.
//
//

#import <Foundation/Foundation.h>
#import "Session.h"

@interface Person : NSObject

@property (nonatomic, retain) NSNumber *weight;
@property (nonatomic, retain) NSString *gender;
@property (nonatomic, retain) NSNumber *matabRate;
@property (nonatomic, retain) NSNumber *age;
@property (nonatomic, retain) Session *session;
//@property (nonatomic, retain) UsageSettings *usageSettings;
@property (nonatomic) NSInteger alarm;

//old function
-(id)initWithGender:(NSString *)gender personWeight:(NSNumber *) weight;
//new refactored functions
+(void)setGender:(NSString*)newGender;
+(void)setAge:(NSNumber*)age;
+(void)setWeight:(NSNumber*)weight;
+(void)checkStats;
+(void)newSession;
+(void)deleteSession;
+(NSString*)getGender;
+(NSNumber*)getWeight;
+(NSNumber*)getAge;
+(Session*)getSession;
@end
