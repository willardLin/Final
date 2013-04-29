//
//  CustomTableViewCell.h
//  Final
//
//  Created by Willard Lin on 13-4-29.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (nonatomic,strong) IBOutlet UILabel     *bigTitle;
@property (nonatomic,strong) IBOutlet UIImageView *imageViewHotel;
@property (nonatomic,strong) UIImage              *imageHotel;
@property (nonatomic,strong) IBOutlet UIButton    *phoneButton;
@property (nonatomic,strong) IBOutlet UILabel     *price;
@property (nonatomic,strong) IBOutlet UILabel     *address;
- (IBAction)phoneCalled:(id)sender;
@end
