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
#define CELL_HEIGHT 70

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
    _scenic = [[Informations alloc] initWithPlist:kScenicInformations];
    //获取plist中的各项内容
    _scenicDictionary = _scenic.informationsDictionary;
    //输出景点名称
//    NSLog(@"%@",[_scenicDictionary objectForKey:kScenicInformations_Name]);
    _base = [ScenicDetailBase classFromType:kGulangyuNameType];
    _imageArray = [[NSMutableArray alloc] init];
    for (NSString *imageName in [_scenicDictionary objectForKey:kScenicInformations_picture])
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
    //有几个景点名称，就返回多少行
    return [[_scenicDictionary objectForKey:kScenicInformations_Name] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //返回景点名称
    cell.imageView.image = [_imageArray objectAtIndex:[indexPath row]];
    cell.textLabel.text = [[_scenicDictionary objectForKey:kScenicInformations_Name] objectAtIndex:[indexPath row]];
    cell.detailTextLabel.text = [[_scenicDictionary objectForKey:kScenicInformations_detail] objectAtIndex:[indexPath row]];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return CELL_HEIGHT;
}


#pragma mark - Table view delegate

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
