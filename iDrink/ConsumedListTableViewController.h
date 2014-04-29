//
//  ConsumedListTableViewController.h
//  iDrink
//
//  Created by Nick Evans on 4/29/14.
//  Copyright (c) 2014 Melissa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


@interface ConsumedListTableViewController : UITableViewController
<UITableViewDataSource, UITableViewDelegate>{
    AppDelegate *appDelegate;
}

@property(strong, nonatomic)NSMutableArray *drinksDrank;
@property(strong, nonatomic)NSMutableArray *timesDrank;
@property Session* session;

@end
