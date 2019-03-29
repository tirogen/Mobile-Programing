//
//  TableViewController.m
//  SimpleDynamicTable
//
//  Created by Ni Tu on 15/2/2562 BE.
//  Copyright © 2562 CatDev. All rights reserved.
//

#import "ViewController.h"

@interface TableViewController ()

@property(strong, nonatomic) NSIndexPath* iPath;

@end

@implementation TableViewController

@synthesize myTitle;
@synthesize myDetail;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *mytitle = [[NSArray alloc]
                        initWithObjects:@"Xcode",@"Objective-C",
                        @"Cocoa Touch",@"Eiei", nil];
    NSArray *mydetail = [[NSArray alloc]
                        initWithObjects:@"X",@"C",
                        @"T",@"E", nil];
    
    self.myTitle = mytitle;
    self.myDetail = mydetail;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [myTitle count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    self.iPath = indexPath;
    [self performSegueWithIdentifier:(@"goShow") sender:(self)];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"goShow"]){
        ViewController *se= [segue destinationViewController];
        se.theName = [self.myDetail objectAtIndex:self.iPath.row];
        se.RowID = [NSString stringWithFormat:@"Row No. %d",self.iPath.row];
        se.SecID = [NSString stringWithFormat:@"Section No. %d",self.iPath.section];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    //cell.textLabel.text=@"Header";
    //cell.detailTextLabel.text=@"Detail";
    cell.textLabel.text=[myTitle objectAtIndex:indexPath.row];
    cell.detailTextLabel.text=[myDetail objectAtIndex:indexPath.row];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *title=[NSString stringWithFormat:@"Sec %d", section];
    return title;

}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
