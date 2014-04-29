//
//  AddDrinkViewController.m
//  BAC Calc
//
//  Created by Melissa on 4/27/14.
//
//

#import "AddDrinkViewController.h"
#import "AddDrinkListViewController.h"

@interface AddDrinkViewController (){
    NSMutableDictionary *drinkTypeData; //plist information
}

@end

@implementation AddDrinkViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    /* load plist data into drinkTypeData dictionary */
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource: @"drinks" ofType: @"plist"];
    drinkTypeData = [[NSMutableDictionary alloc] initWithContentsOfFile: plistPath];
}

- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"AddThirdViewController - viewWillAppear");
}

/* two functions required by UITableViewDataSource */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"AddThirdViewController - tableView numberOfRowsInSection");
    return [drinkTypeData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"AddThirdViewController - tableView cellForRowAtIndexPath");
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault
                                      reuseIdentifier: cellIdentifier];
    }
    NSArray *rowData = [drinkTypeData allKeys];
    cell.textLabel.text = [rowData objectAtIndex:indexPath.row];
    
    return cell;
}

/* this function tells the view controller to deselect the previously selected data */
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"AddThirdViewController - tableView didSelectRowAtIndexPath");
    [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"AddThirdViewController - prepareForSegue");
    if ([segue.identifier isEqualToString:@"drinkTypeSegue"]){
        AddDrinkListViewController *drinkListViewController = segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSArray *rowData = [drinkTypeData allKeys];
        drinkListViewController.title = [rowData objectAtIndex:indexPath.row];
        drinkListViewController.currentDrinkType = [rowData objectAtIndex:indexPath.row];
        drinkListViewController.drinkList = [drinkTypeData objectForKey:drinkListViewController.title];
        /* set back button to be shorter so that it fits nicely */
        UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle: @"Drink Type"
                                                                       style: UIBarButtonItemStyleBordered
                                                                      target: nil
                                                                      action: nil];
        self.navigationItem.backBarButtonItem = backButton;
    }
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
