//
//  CitiesTableViewController.m
//  ajob
//
//  Created by Erdi Dogan on 7.02.2015.
//  Copyright (c) 2015 Erdi Dogan. All rights reserved.
//

#import "CitiesTableViewController.h"
#import "City.h"
#import "DetailViewController.h"

#define getDataURL @"http://njepuneere.com/show-api"

@interface CitiesTableViewController ()

@end

@implementation CitiesTableViewController
@synthesize jsonArray, citiesArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Njepuneere Job List";
    
    [self retrieveData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return citiesArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIndentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIndentifier forIndexPath:indexPath];
    
    // Configure the cell...
    City * cityObject;
    cityObject = [citiesArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = cityObject.com_name;
    //accessory
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([[segue identifier] isEqualToString:@"pushDetailView"])
    {
        NSIndexPath * indexPath = [self.tableView indexPathForSelectedRow];
        //get the object for the selected row
        City * object = [citiesArray objectAtIndex:indexPath.row];
        
        [[segue destinationViewController] getCity:object];
    }
}


#pragma mark - 
#pragma mark Class Methods

- (void) retrieveData
{
    NSURL * url = [NSURL URLWithString:getDataURL];
    NSData * data = [NSData dataWithContentsOfURL:url];
    
    jsonArray = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    //set uo our cities array
    
    citiesArray = [[NSMutableArray alloc] init];
    for (int i = 0; i<jsonArray.count; i++)
    {
        NSString * ComName = [[jsonArray objectAtIndex:i] objectForKey:@"com_name"];
        NSString * AdsName = [[jsonArray objectAtIndex:i] objectForKey:@"ads_name"];
        NSString * JobDesc = [[jsonArray objectAtIndex:i] objectForKey:@"job_desc"];
        
        [citiesArray addObject:[[City alloc]initWithComName:ComName andAdsName:AdsName andJobDesc:JobDesc]];
    }
    
    [self.tableView reloadData];
}



@end
