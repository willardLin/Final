//
//  ShoppingViewController.m
//  Final
//
//  Created by Willard Lin on 13-4-30.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ShoppingViewController.h"
#import "FileName.h"
#import "CustomTableViewCell.h"
@interface ShoppingViewController ()

@end

@implementation ShoppingViewController

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
    _shopping = [[Informations alloc] initWithPlist:kShoppingInformations];
    //获取plist中的各项内容
    _shoppingDictionary = _shopping.informationsDictionary;
    _shoppingCount = [[_shoppingDictionary objectForKey:kShoppingInformations_shoppingName] count];
    _imageArray = [[NSMutableArray alloc] init];
    for (NSString *imageName in [_shoppingDictionary objectForKey:kShoppingInformations_picture])
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
    return _shoppingCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CustomIdentifier";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.bigTitle.text = [[_shoppingDictionary objectForKey:kShoppingInformations_shoppingName] objectAtIndex:[indexPath row]];
    [cell.phoneButton setTitle:[[_shoppingDictionary objectForKey:kShoppingInformations_phoneNumber] objectAtIndex:[indexPath row]] forState:UIControlStateNormal];
    cell.price.text = [[_shoppingDictionary objectForKey:kShoppingInformations_price] objectAtIndex:[indexPath row]];
    cell.address.text = [[_shoppingDictionary objectForKey:kShoppingInformations_address] objectAtIndex:[indexPath row]];
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
