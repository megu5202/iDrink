//
//  TabBarController.h
//  iDrink
//
//  Created by Melissa on 4/27/14.
//  Copyright (c) 2014 Melissa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Session.h"
#import "Person.h"

@interface TabBarController : UIViewController{
    Session* session;
    Person* person;
    NSInteger* bigGender;
}

@end
