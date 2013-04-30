//
//  CustomTableViewCell.m
//  Final
//
//  Created by Willard Lin on 13-4-29.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell
@synthesize bigTitle = _bigTitle;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)phoneCalled:(id)sender
{
    NSString *number = _phoneButton.titleLabel.text;
    NSString *num = [[NSString alloc] initWithFormat:@"tel://%@",number]; //number为号码字符串
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:num]]; //拨号
}

@end
