//
//  HotelViewController.m
//  Final
//
//  Created by Willard Lin on 13-4-29.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "HotelViewController.h"
#import "CustomTableViewCell.h"
#import "FileName.h"
#import "Informations.h"
@interface HotelViewController ()

@end

@implementation HotelViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //获取酒店类
    _hotel = [[Informations alloc] initWithPlist:kHotelInformations];
    //获取plist中的各项内容
    _hotelDictionary = _hotel.informationsDictionary;
    _hotelCount = [[_hotelDictionary objectForKey:kHotelInformations_hotelName] count];
    //输出景点名称
    //    NSLog(@"%@",[_hotelDictionary objectForKey:khotelInformations_Name]);
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _hotelCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CustomIdentifier";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.bigTitle.text = [[_hotelDictionary objectForKey:kHotelInformations_hotelName] objectAtIndex:[indexPath row]];
    [cell.phoneButton setTitle:[[_hotelDictionary objectForKey:kHotelInformations_phoneNumber] objectAtIndex:[indexPath row]] forState:UIControlStateNormal];
    cell.price.text = [[_hotelDictionary objectForKey:kHotelInformations_price] objectAtIndex:[indexPath row]];
    cell.address.text = [[_hotelDictionary objectForKey:kHotelInformations_address] objectAtIndex:[indexPath row]];
    cell.imageViewHotel.image = [UIImage imageNamed:[[_hotelDictionary objectForKey:kHotelInformations_picture] objectAtIndex:[indexPath row]]];
//    cell.bigTitle.text = @"你全家";
        // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
