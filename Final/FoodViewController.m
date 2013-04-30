//
//  FoodViewController.m
//  Final
//
//  Created by Willard Lin on 13-4-30.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "FoodViewController.h"
#import "CustomTableViewCell.h"
#import "FileName.h"
@interface FoodViewController ()

@end

@implementation FoodViewController

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
    _food = [[Informations alloc] initWithPlist:kFoodInformations];
    //获取plist中的各项内容
    _foodDictionary = _food.informationsDictionary;
    _foodCount = [[_foodDictionary objectForKey:kFoodInformations_foodName] count];
    _imageArray = [[NSMutableArray alloc] init];
    for (NSString *imageName in [_foodDictionary objectForKey:kFoodInformations_picture])
    {
        UIImage *image = [UIImage imageNamed:imageName];
        [_imageArray addObject:image];
    }

    [super viewDidLoad];

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
    return _foodCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CustomIdentifier";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.bigTitle.text = [[_foodDictionary objectForKey:kFoodInformations_foodName] objectAtIndex:[indexPath row]];
    cell.restaurant.text = [[_foodDictionary objectForKey:kFoodInformations_restaurant] objectAtIndex:[indexPath row]];
    cell.price.text = [[_foodDictionary objectForKey:kFoodInformations_price] objectAtIndex:[indexPath row]];
    cell.address.text = [[_foodDictionary objectForKey:kFoodInformations_address] objectAtIndex:[indexPath row]];
    cell.imageViewInfo.image = [_imageArray objectAtIndex:[indexPath row]];
    //    cell.bigTitle.text = @"你全家";
    // Configure the cell...
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}

@end
