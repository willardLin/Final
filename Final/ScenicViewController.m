//
//  ScenicViewController.m
//  Final
//
//  Created by 林志利 on 13-4-1.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicViewController.h"
#import "FileName.h"
#import "ScenicDetailBase.h"
#import "ScenicDetailViewController.h"
@interface ScenicViewController ()

@end

@implementation ScenicViewController
@synthesize scenic = _scenic;
@synthesize scenicArray = _scenicArray;
@synthesize scenicDictionary = _scenicDictionary;
@synthesize base = _base;

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
    //获取景点类
    _scenic = [[ScenicInformations alloc] initWithPlist:kScenicInformations];
    //获取plist中的各项内容
    _scenicDictionary = _scenic.informationsDictionary;
    //输出景点名称
//    NSLog(@"%@",[_scenicDictionary objectForKey:kScenicInformations_Name]);
    _base = [ScenicDetailBase classFromType:kGulangyuNameType];
    
//    _base.scenicName = @"你全家";
//    _base.scenicSubName = @"你老母";
//    _base.title = kGulangyu;
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
    //有几个景点名称，就返回多少行
    return [[_scenicDictionary objectForKey:kScenicInformations_Name] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    //返回景点名称
    cell.textLabel.text = [[_scenicDictionary objectForKey:kScenicInformations_Name] objectAtIndex:[indexPath row]];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60.0f;
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

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    // Navigation logic may go here. Create and push another view controller.
//    /*
//     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
//     // ...
//     // Pass the selected object to the new view controller.
//     [self.navigationController pushViewController:detailViewController animated:YES];
//     */
//    [self performSegueWithIdentifier:@"DetailInformation" sender:self];
//}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"DetailInformation"]) {
        _base = [ScenicDetailBase classFromType:[[self.tableView indexPathForSelectedRow] row]];
        ScenicDetailViewController *vc = segue.destinationViewController;
        [vc setValue:self.base forKey:@"base"];
        [vc setHidesBottomBarWhenPushed:YES];
    }
}

@end
