//
//  DrinkInfo.h
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import <Foundation/Foundation.h>

@interface DrinkInfo : NSObject{
    NSString *name;
    NSNumber *proof;
    NSString *type;
    NSString *subtype;
    NSNumber *favorite;
    NSMutableArray *commonAmts;
}

-(NSString*)getName;
-(void)setName:(NSString*)newName;
-(NSNumber*)getproof;
-(void)setproof:(NSNumber*)newProof;

-(NSString*)getType;
-(void)setType:(NSString*)newType;

-(NSString*)getSubType;
-(void)setSubType:(NSString*)newSubtype;

-(NSNumber*)getFavorite;
-(void)setFavorite:(NSNumber*)newFavorite;

@end
