//
//  DrinkInfo.h
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import <Foundation/Foundation.h>

@interface DrinkInfo : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSNumber *proof;
@property (nonatomic, retain) NSString *type;
@property (nonatomic, retain) NSString *subtype;
@property (nonatomic, retain) NSNumber *favorite;
@property (nonatomic, retain) NSMutableArray *commonAmts;

+(NSString*)getName;
+(void)setName:(NSString*)name;
+(NSNumber*)getproof;
+(void)setproof:(NSNumber*)proof;

+(NSString*)getType;
+(void)setType:(NSString*)type;

+(NSString*)getSubType;
+(void)setSubType:(NSString*)subtype;

+(NSNumber*)getFavorite;
+(void)setFavorite:(NSNumber*)favorite;

@end
