//
//  AddDrinkViewController.h
//  BAC Calc
//
//  Created by Melissa on 4/27/14.
//
//

#import "TabBarController.h"

@interface AddDrinkViewController : UITableViewController
<UITableViewDataSource, UITableViewDelegate>{
    NSIndexPath *iPath;
}
@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end
