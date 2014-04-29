//
//  AddDrinkListViewController.m
//  iDrink
//
//  Created by Melissa on 4/28/14.
//  Copyright (c) 2014 Melissa. All rights reserved.
//

#import "AddDrinkListViewController.h"
#import "DrinkViewController.h"

@interface AddDrinkListViewController (){
    NSMutableArray *drinkData;
}

@end

@implementation AddDrinkListViewController

- (id)initWithStyle:(UITableViewStyle)style{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    drinkData = _drinkList;
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"AddDrinkListViewController - viewWillAppear");
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    // Return the number of rows in the section.
    NSLog(@"number of rows in table %lu", (unsigned long)[drinkData count]);
    return [drinkData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"AddDrinkListViewController - tableView");
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [drinkData objectAtIndex:indexPath.row];
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"AddDrinkListViewController - didSelectRowAtIndexPath");
    iPath = indexPath;
    [self performSegueWithIdentifier:@"drinkNameSegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"AddDrinkListViewController - prepareForSegue");
    if ([segue.identifier isEqualToString: @"drinkNameSegue"]) {
        DrinkViewController *drinkViewController = segue.destinationViewController;
        //NSIndexPath *indexPath = [[self tableView] indexPathForSelectedRow];
        NSArray *rowData = drinkData;
        drinkViewController.title = [rowData objectAtIndex:iPath.row];
        drinkViewController.name = [rowData objectAtIndex:iPath.row];
        drinkViewController.drinkType = _currentDrinkType;
        UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle: _currentDrinkType
                                                                       style: UIBarButtonItemStyleBordered
                                                                      target: nil
                                                                      action: nil];
        self.navigationItem.backBarButtonItem = backButton;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
