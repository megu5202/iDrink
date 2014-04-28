//
//  AppDelegate.h
//  iDrink
//
//  Created by Melissa on 4/27/14.
//  Copyright (c) 2014 Melissa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Person.h"
#import "Session.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    Person *p;
    Session *session;
}

-(Person*)getPerson;
-(void)setPerson:(Person*)person;
-(Session*)getSession;
-(void)setSesion:(Session*)session;

@property (strong, nonatomic) UIWindow *window;



@end
