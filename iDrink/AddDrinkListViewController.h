//
//  AddDrinkListViewController.h
//  iDrink
//
//  Created by Melissa on 4/28/14.
//  Copyright (c) 2014 Melissa. All rights reserved.
//

#import "TabBarController.h"

@interface AddDrinkListViewController : UITableViewController
<UITableViewDataSource, UITableViewDelegate>{
    NSIndexPath *iPath;
}

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@property(strong, nonatomic)NSMutableArray *drinkList;
@property(weak, nonatomic) NSString *currentDrinkType;

@end
