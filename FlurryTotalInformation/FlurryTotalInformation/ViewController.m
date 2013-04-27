//
//  ViewController.m
//  FlurryTotalInformation
//
//  Created by KSS on 13-4-23.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ViewController.h"
#import "MetricRequest.h"
#import "GetDictionaryDayInformation.h"
@interface ViewController ()

@end

@implementation ViewController

static int i = 0;
- (id)init
{
    if (self = [super init])
    {
    }
    return self;
}
- (void)viewDidAppear:(BOOL)animated
{
    //显示UILabel的数字

}

- (void) getAllInformations
{
//    _totalArray = [[NSMutableArray alloc] init];
//    _totalSubArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < _rows.count; i++)
    {
//        [_totalSubArray addObject:]
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    _rows = [[NSArray alloc] initWithObjects:
             @"每天活跃用户：",
             @"每周活跃用户：",
             @"每月活跃用户：",
             @"每天新增用户",
//             @"页面量：",
             nil];
    _dayValueArray = [[NSMutableArray alloc] init];
//    _countries = [[NSArray alloc] initWithObjects:
//                  @"所有国家"
//                  @"美国",
//                  @"台湾",
//                  @"日本",
//                  @"韩国",nil];
    _countries = [[NSArray alloc] initWithObjects:@"所有国家", nil];
    _tableView.backgroundColor = [UIColor colorWithRed:0.961 green:0.961 blue:0.961 alpha:1];
    self.view.backgroundColor  = [UIColor colorWithRed:0.961 green:0.961 blue:0.961 alpha:1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)AppChanged:(id)sender
{
}

- (IBAction)refresh:(id)sender
{
    [self performSelector:@selector(afterDelayActiveUsersPerDay) withObject:nil afterDelay:i+=2];

    [self performSelector:@selector(afterDelayActiveUsersPerWeek) withObject:nil afterDelay:i+=2];
    
    [self performSelector:@selector(afterDelayNewUsers) withObject:nil afterDelay:i+=2];
    [_tableView reloadData];

}

//获取当天活跃用户
- (void)afterDelayActiveUsersPerDay
{
    NSDictionary *dic = [MetricRequest getActiveUsersPerDayCount];
//    _countryName = [[[GetDictionaryDayInformation alloc] init] getCountryNameFromMetric:dic];
    _dayValueCount = [[[GetDictionaryDayInformation alloc] init] getAllDayValueFromMetric:dic];
    [_dayValueArray addObject:[NSNumber numberWithInteger:_dayValueCount]];
}

//获取每周活跃用户
- (void)afterDelayActiveUsersPerWeek
{
    NSDictionary *dic = [MetricRequest getActiveUsersPerWeekCount];
    _dayValuePerWeek = [[[GetDictionaryDayInformation alloc] init] getDayValueFromMetric:dic];
    _dayValueCount = [[[GetDictionaryDayInformation alloc] init] getAllDayValueFromMetric:dic];
    [_dayValueArray addObject:[NSNumber numberWithInteger:_dayValueCount]];

}

//获取每月活跃用户
- (void)afterDelayActiveUsersPerMonth
{
    NSDictionary *dic = [MetricRequest getActiveUsersPerMonthCount];
    _dayValuePerMonth = [[[GetDictionaryDayInformation alloc] init] getDayValueFromMetric:dic];
    _dayValueCount = [[[GetDictionaryDayInformation alloc] init] getAllDayValueFromMetric:dic];
    [_dayValueArray addObject:[NSNumber numberWithInteger:_dayValueCount]];

}

//获取每天的新用户数量
- (void)afterDelayNewUsers
{
    NSDictionary *dic = [MetricRequest getNewUsersCount];
    _dayValueNewUsersPerDay = [[[GetDictionaryDayInformation alloc] init] getDayValueFromMetric:dic];
    _dayValueCount = [[[GetDictionaryDayInformation alloc] init] getAllDayValueFromMetric:dic];
    [_dayValueArray addObject:[NSNumber numberWithInteger:_dayValueCount]];
    [_tableView reloadData];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return _countries.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _rows.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [_countries objectAtIndex:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = [_rows objectAtIndex:[indexPath row]];
    cell.detailTextLabel.text = [_dayValueArray objectAtIndex:[indexPath row]];
    //根据不同的section赋值
    NSLog(@"%d",indexPath.section);
    
//    cell.detailTextLabel.text = [_dayValue objectAtIndex:[indexPath row]];
//    cell.detailTextLabel.text =
//    cell.detailTextLabel.text =
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
