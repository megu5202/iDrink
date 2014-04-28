//
//  DrinkInfo.m
//  BAC Calc
//
//  Created by Jake Charland on 4/27/14.
//
//

#import "DrinkInfo.h"

@implementation DrinkInfo

-(NSString*)getName{
    return name;
}
-(void)setName:(NSString*)newName{
    name = newName;
}
-(NSNumber*)getproof{
    return proof;
}
-(void)setproof:(NSNumber*)newProof{
    proof = newProof;
}

-(NSString*)getType{
    return type;
}
-(void)setType:(NSString*)newType{
    type = newType;
}

-(NSString*)getSubType{
    return subtype;
}
-(void)setSubType:(NSString*)newSubtype{
    subtype = newSubtype;
}

-(NSNumber*)getFavorite{
    return favorite;
}
-(void)setFavorite:(NSNumber*)newFavorite{
    favorite = newFavorite;
}

@end
