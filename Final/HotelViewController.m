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
    _imageArray = [[NSMutableArray alloc] init];
    for (NSString *imageName in [_hotelDictionary objectForKey:kHotelInformations_picture])
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
    return _hotelCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CustomIdentifier";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.bigTitle.text = [[_hotelDictionary objectForKey:kHotelInformations_hotelName] objectAtIndex:[indexPath row]];
    [cell.phoneButton setTitle:[[_hotelDictionary objectForKey:kHotelInformations_phoneNumber] objectAtIndex:[indexPath row]] forState:UIControlStateNormal];
    cell.price.text = [[_hotelDictionary objectForKey:kHotelInformations_price] objectAtIndex:[indexPath row]];
    cell.address.text = [[_hotelDictionary objectForKey:kHotelInformations_address] objectAtIndex:[indexPath row]];
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
