//
//  ScenicDetailViewController.m
//  Final
//
//  Created by 林志利 on 13-4-12.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailViewController.h"
#import "ScenicViewController.h"
#import "ScenicDetailImageViewController.h"
#define SCREEN_WIDTH 320
#define BASE_SCROLLVIEW_HEIGHT 550

#define IMAGE_WIDTH   280
#define IMAGE_HEIGHT  148

#define LABEL_WIDTH   121
#define LABEL_HEIGHT  21
//LABEL单排高度
#define LABEL_NUMBERLINE_HEIGHT 21
//LABEL一排的最大字数
#define LABEL_MAX_WORDS_NUMBER 14
#define BETWEEN_IMAGEVIEW_AND_LABEL_HEIGHT 8
#define SEGMENT_HEIGHT 44
@interface ScenicDetailViewController ()
@end

@implementation ScenicDetailViewController
//@synthesize scenicSubName  = _scenicSubName;
@synthesize baseScrollView = _baseScrollView;
@synthesize tapGesture = _tapGesture;
@synthesize imagesScrollView = _imagesScrollView;
@synthesize base = _base;
@synthesize basePageControl = _basePageControl;
CGRect descriptionImageViewOriginalFrame;
CGRect busImageViewOriginalFrame;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void) viewWillAppear:(BOOL)animated
{

}

- (void) viewDidAppear:(BOOL)animated
{
    self.baseScrollView.showsHorizontalScrollIndicator = NO;
    self.baseScrollView.showsVerticalScrollIndicator = NO;
    
    _imagesScrollView.showsHorizontalScrollIndicator = NO;
    _imagesScrollView.showsVerticalScrollIndicator   = NO;

    
    NSLog(@"selectedSegmentIndex:%i",_scenicSubName.selectedSegmentIndex);
}

- (void)viewDidLoad
{
    if (self.base.scenicSubNameCount < 2)
    {
        [_scenicSubName removeFromSuperview];
        CGRect rect = _baseScrollView.frame;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
        rect.size.height += SEGMENT_HEIGHT;
>>>>>>> 添加了中山路
=======
        rect.size.height += SEGMENT_HEIGHT;
>>>>>>> 更新了南普陀寺
=======
        rect.size.height += SEGMENT_HEIGHT;
>>>>>>> 有木有
        rect.origin.y -= SEGMENT_HEIGHT;
        _baseScrollView.frame = rect;
=======
        rect.size.height += SEGMENT_HEIGHT;
        rect.origin.y -= SEGMENT_HEIGHT;
        _baseScrollView.frame = rect;
        CGRect rectImage = self.imagesScrollView.frame;
        rectImage.origin.y -= SEGMENT_HEIGHT;
        self.imagesScrollView.frame = rectImage;
>>>>>>> 1111
    }
    //segment个数不能超过4个，负责排版混乱
    _scenicSubName = [_scenicSubName initWithItems:self.base.scenicSubName];

    UIView *view = [[UIView alloc] initWithFrame:self.view.bounds];
    //大的scrollView的大小
    self.baseScrollView.contentSize = CGSizeMake(SCREEN_WIDTH, BASE_SCROLLVIEW_HEIGHT);
    //单击手势控制
    _tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(prepareForSegue:sender:)];
    //图片ScrollView的大小
    _imagesScrollView.contentSize = CGSizeMake(_imagesScrollView.frame.size.width * 3, _imagesScrollView.frame.size.height);
    //有页面效果，超过50%自动跳到下一个
    _imagesScrollView.pagingEnabled = YES;
    //导航栏UINavigation景点名称
    self.title = _base.title;
    //开放时间
    _openTimeLabel.text = [self.base.openTime objectAtIndex:0];
    //价格
    _priceLabel.text    = [self.base.price objectAtIndex:0];
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    //图片
    _imageView1.image = [UIImage imageNamed:kRiguangyan_pic1];
    _imageView2.image = [UIImage imageNamed:kRiguangyan_pic2];
    _imageView3.image = [UIImage imageNamed:kRiguangyan_pic3];
=======
=======
>>>>>>> 更新了南普陀寺
=======
>>>>>>> 有木有
=======
>>>>>>> 1111
    switch (self.base.type)
    {
        case kGulangyuNameType :
        {
            //图片
            _imageView1.image = [UIImage imageNamed:kRiguangyan_pic1];
            _imageView2.image = [UIImage imageNamed:kRiguangyan_pic2];
            _imageView3.image = [UIImage imageNamed:kRiguangyan_pic3];
            break;
        }
        case kZhongshanluNameType:
        {
            _imageView1.image = [UIImage imageNamed:kTaiwanxiaochi_pic1];
            _imageView2.image = [UIImage imageNamed:kTaiwanxiaochi_pic2];
            _imageView3.image = [UIImage imageNamed:kTaiwanxiaochi_pic3];
            break;

        }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> 有木有
=======
>>>>>>> 1111
        case kNanputuoNameType:
        {
            _imageView1.image = [UIImage imageNamed:kTianwangdian_pic1];
            _imageView2.image = [UIImage imageNamed:kTianwangdian_pic2];
            _imageView3.image = [UIImage imageNamed:kTianwangdian_pic3];
            break;
        }
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 更新了南普陀寺
=======
>>>>>>> 有木有
//            kNanputuoNameType,
//            kXiamenDaxueNameType,
//            kZhiwuyuanNameType,
//            kNanhualuNameType,
=======
        case kXiamenDaxueNameType:
        {
            _imageView1.image = [UIImage imageNamed:kXiamendaxue_pic1];
            _imageView2.image = [UIImage imageNamed:kXiamendaxue_pic2];
            _imageView3.image = [UIImage imageNamed:kXiamendaxue_pic3];
            break;
        }
        case kZhiwuyuanNameType:
        {
            _imageView1.image = [UIImage imageNamed:kZhiwuyuan_pic1];
            _imageView2.image = [UIImage imageNamed:kZhiwuyuan_pic2];
            _imageView3.image = [UIImage imageNamed:kZhiwuyuan_pic3];

        }
        case kNanhualuNameType:
        {
            _imageView1.image = [UIImage imageNamed:kNanhualu_pic1];
            _imageView2.image = [UIImage imageNamed:kNanhualu_pic2];
            _imageView3.image = [UIImage imageNamed:kNanhualu_pic3];

        }
>>>>>>> 1111
//            kHuandaoluNameType,
//            kGuanyinshanNameType,
//            kTiedaoNameType,
//            kChenjiagengNameType,
//            kHaiwanNameType,
//        kJimeiNameType:
//            <#statements#>
//            break;
            
        default:
            break;
    }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 添加了中山路
=======
>>>>>>> 更新了南普陀寺
=======
>>>>>>> 有木有
=======
>>>>>>> 1111
    //改变下划线位置
    [self changeLabelHeightAndMoveImageViewByIndex:0];
    //地址
    _addressLabel.text  = [self.base.address objectAtIndex:0];
    //简介
    descriptionImageViewOriginalFrame = _descriptionImageView.frame;
    _descriptionLabel.text = [self.base.description objectAtIndex:0];
    //公交
    [self setBusRectByIndex:0];
    _rightBusLabel.text = [self.base.bus objectAtIndex:0];
    [view addSubview:_imagesScrollView];
    [_baseScrollView addSubview:view];
    //将pageControl放到视图最上方
    [_baseScrollView bringSubviewToFront:_pageControl];
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 更新了南普陀寺
    
    //设置委托
    _imagesScrollView.delegate = self;
    _baseScrollView.delegate = self;
    _baseScrollView.pagingEnabled = YES;
    //scrollview只能横向滑动或者竖向滑动
    
<<<<<<< HEAD
=======
=======
>>>>>>> 有木有
    
=======
    
>>>>>>> 1111
    //设置委托
    _imagesScrollView.delegate = self;
    _baseScrollView.delegate = self;
    _baseScrollView.pagingEnabled = YES;
    //scrollview只能横向滑动或者竖向滑动
    
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 添加了中山路
=======
>>>>>>> 更新了南普陀寺
=======
>>>>>>> 有木有
=======
>>>>>>> 1111
    _basePageControl = [[UIPageControl alloc] init];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _baseScrollView.alwaysBounceVertical = YES;
    _imagesScrollView.directionalLockEnabled = YES;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    _currentScenicSubImage = kRiguangyan;
}

//设置公交的界面
- (void)setBusRectByIndex:(NSUInteger)index
{
    CGRect rect = _descriptionImageView.frame;
    NSLog(@"original rect y%f",rect.origin.y);
    rect.origin.y = rect.origin.y + BETWEEN_IMAGEVIEW_AND_LABEL_HEIGHT;
    NSLog(@"after rect y%f",rect.origin.y);
    _leftBusLabel.frame = CGRectMake(26, rect.origin.y, _leftBusLabel.frame.size.width, _leftBusLabel.frame.size.height);
    
    CGSize size = CGSizeMake(190, 700);
    CGRect rightRect = CGRectZero;
    CGSize labelSize = [[self.base.bus objectAtIndex:index] sizeWithFont:_rightBusLabel.font constrainedToSize:size lineBreakMode:NSLineBreakByCharWrapping];
    [_rightBusLabel setFrame:CGRectMake(_rightBusLabel.frame.origin.x, rect.origin.y, labelSize.width, labelSize.height)];
    rightRect = CGRectMake(_descriptionImageView.frame.origin.x, _leftBusLabel.frame.origin.y + labelSize.height + 8 , _busImageView.frame.size.width, _busImageView.frame.size.height);
    _busImageView.frame = rightRect;
    rightRect = CGRectZero;
    _rightBusLabel.text = [self.base.bus objectAtIndex:index];
}

=======
    _currentScenicSubImage = 0;
}

=======
    _currentScenicSubImage = 0;
}

>>>>>>> 更新了南普陀寺
=======
    _currentScenicSubImage = 0;
}

>>>>>>> 有木有
//设置公交的界面
- (void)setBusRectByIndex:(NSUInteger)index
{
    CGRect rect = _descriptionImageView.frame;
    NSLog(@"original rect y%f",rect.origin.y);
    rect.origin.y = rect.origin.y + BETWEEN_IMAGEVIEW_AND_LABEL_HEIGHT;
    NSLog(@"after rect y%f",rect.origin.y);
    _leftBusLabel.frame = CGRectMake(26, rect.origin.y, _leftBusLabel.frame.size.width, _leftBusLabel.frame.size.height);
    
    CGSize size = CGSizeMake(190, 700);
    CGRect rightRect = CGRectZero;
    CGSize labelSize = [[self.base.bus objectAtIndex:index] sizeWithFont:_rightBusLabel.font constrainedToSize:size lineBreakMode:NSLineBreakByCharWrapping];
    [_rightBusLabel setFrame:CGRectMake(_rightBusLabel.frame.origin.x, rect.origin.y, labelSize.width, labelSize.height)];
    rightRect = CGRectMake(_descriptionImageView.frame.origin.x, _leftBusLabel.frame.origin.y + labelSize.height + 8 , _busImageView.frame.size.width, _busImageView.frame.size.height);
    _busImageView.frame = rightRect;
    rightRect = CGRectZero;
    _rightBusLabel.text = [self.base.bus objectAtIndex:index];
}

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 添加了中山路
=======
>>>>>>> 更新了南普陀寺
=======
>>>>>>> 有木有
=======
    _currentScenicSubImage = 0;
}

//设置公交的界面
- (void)setBusRectByIndex:(NSUInteger)index
{
    CGRect rect = _descriptionImageView.frame;
    NSLog(@"original rect y%f",rect.origin.y);
    rect.origin.y = rect.origin.y + BETWEEN_IMAGEVIEW_AND_LABEL_HEIGHT;
    NSLog(@"after rect y%f",rect.origin.y);
    _leftBusLabel.frame = CGRectMake(26, rect.origin.y, _leftBusLabel.frame.size.width, _leftBusLabel.frame.size.height);
    
    CGSize size = CGSizeMake(190, 700);
    CGRect rightRect = CGRectZero;
    CGSize labelSize = [[self.base.bus objectAtIndex:index] sizeWithFont:_rightBusLabel.font constrainedToSize:size lineBreakMode:NSLineBreakByCharWrapping];
    [_rightBusLabel setFrame:CGRectMake(_rightBusLabel.frame.origin.x, rect.origin.y, labelSize.width, labelSize.height)];
    rightRect = CGRectMake(_descriptionImageView.frame.origin.x, _leftBusLabel.frame.origin.y + labelSize.height + 8 , _busImageView.frame.size.width, _busImageView.frame.size.height);
    _busImageView.frame = rightRect;
    rightRect = CGRectZero;
    _rightBusLabel.text = [self.base.bus objectAtIndex:index];
}

>>>>>>> 1111
//分割线根据label高度来调整位置
- (void)changeLabelHeightAndMoveImageViewByIndex:(NSUInteger)index
{
    if ([[self.base.description objectAtIndex:index] length] > LABEL_MAX_WORDS_NUMBER)
    {
        CGSize size = CGSizeMake(190, 500);
        CGRect rect = CGRectZero;
        CGSize labelSize = [[self.base.description objectAtIndex:index] sizeWithFont:_descriptionLabel.font constrainedToSize:size lineBreakMode:NSLineBreakByCharWrapping];
        [_descriptionLabel setFrame:CGRectMake(_descriptionLabel.frame.origin.x, _descriptionLabel.frame.origin.y, labelSize.width, labelSize.height)];
        rect = CGRectMake(_descriptionImageView.frame.origin.x, 273 + labelSize.height + 8 , _descriptionImageView.frame.size.width, _descriptionImageView.frame.size.height);
        _descriptionImageView.frame = rect;
        rect = CGRectZero;
        _descriptionLabel.text = [self.base.description objectAtIndex:index];
        NSLog(@"%f,%f",_descriptionLabel.frame.origin.x,_descriptionLabel.frame.origin.y);
        NSLog(@"%f,%f",_descriptionImageView.frame.origin.x,_descriptionImageView.frame.origin.y);

    }
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"imageDetail"]) {
//        NSLog(@"....");
        //隐藏Tabbar
        ScenicDetailImageViewController *vc = (ScenicDetailImageViewController *)segue.destinationViewController;
        [vc setHidesBottomBarWhenPushed:YES];
        [vc setValue:_pageNumber forKey:@"pageNumber"];
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        [vc setValue:[self.base.imageDictionary objectForKey:_currentScenicSubImage]  forKey:@"imagesArray"];
=======
        [vc setValue:[self.base.imagesArray objectAtIndex:[_currentScenicSubImage intValue]]  forKey:@"imagesArray"];
>>>>>>> 添加了中山路
=======
        [vc setValue:[self.base.imagesArray objectAtIndex:[_currentScenicSubImage intValue]]  forKey:@"imagesArray"];
>>>>>>> 更新了南普陀寺
=======
        [vc setValue:[self.base.imagesArray objectAtIndex:[_currentScenicSubImage intValue]]  forKey:@"imagesArray"];
>>>>>>> 有木有
=======
        [vc setValue:[self.base.imagesArray objectAtIndex:[_currentScenicSubImage intValue]]  forKey:@"imagesArray"];
>>>>>>> 1111
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    if (scrollView.contentOffset.x == scrollView.contentOffset.y)
    {
        
    }
}
//显示视图页数
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //通过滚动的偏移量来判断目前页面所对应的小白点
    if (_imagesScrollView == scrollView)
    {
        int page = scrollView.contentOffset.x / _imagesScrollView.frame.size.width;
        //pagecontroll响应值的变化
        _pageControl.currentPage = page;
        _pageNumber = [NSNumber numberWithInt:_pageControl.currentPage];
    }else if(_baseScrollView == scrollView)
    {
        int page = scrollView.contentOffset.x / _baseScrollView.frame.size.width;
        _basePageControl.currentPage = page;
//        NSLog(@"%d",page);
    }
}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

//子景点变换时做出的相应
- (IBAction)scenicSubNameDidChanged:(id)sender
{
//    NSLog(@"%d",_scenicSubName.selectedSegmentIndex);
    int index = _scenicSubName.selectedSegmentIndex;
    _priceLabel.text = [self.base.price objectAtIndex:index];
    //加载相应的图片
    switch (index) {
        case 0:
        {
            _imageView1.image = [[self.base.imageDictionary objectForKey:kRiguangyan] objectAtIndex:0];
            _imageView2.image = [[self.base.imageDictionary objectForKey:kRiguangyan] objectAtIndex:1];
            _imageView3.image = [[self.base.imageDictionary objectForKey:kRiguangyan] objectAtIndex:2];
            _currentScenicSubImage = kRiguangyan;
            break;
        }
        case 1:
        {
            _imageView1.image = [[self.base.imageDictionary objectForKey:kShuzhuang] objectAtIndex:0];
            _imageView2.image = [[self.base.imageDictionary objectForKey:kShuzhuang] objectAtIndex:1];
            _imageView3.image = [[self.base.imageDictionary objectForKey:kShuzhuang] objectAtIndex:2];
            _currentScenicSubImage = kShuzhuang;
            break;
        }
        case 2:
        {
            _imageView1.image = [[self.base.imageDictionary objectForKey:kHaoyueyuan] objectAtIndex:0];
            _imageView2.image = [[self.base.imageDictionary objectForKey:kHaoyueyuan] objectAtIndex:1];
            _imageView3.image = [[self.base.imageDictionary objectForKey:kHaoyueyuan] objectAtIndex:2];
            _currentScenicSubImage = kHaoyueyuan;
            break;
        }
        case 3:
        {
            _imageView1.image = [[self.base.imageDictionary objectForKey:kFengqin] objectAtIndex:0];
            _imageView2.image = [[self.base.imageDictionary objectForKey:kFengqin] objectAtIndex:1];
            _imageView3.image = [[self.base.imageDictionary objectForKey:kFengqin] objectAtIndex:2];
            _currentScenicSubImage = kFengqin;
            break;
        }
        default:
            break;
    }
    _priceLabel.text    = [self.base.price objectAtIndex:index];
    _openTimeLabel.text = [self.base.openTime objectAtIndex:index];
    _addressLabel.text  = [self.base.address objectAtIndex:index];
    _rightBusLabel.text = [self.base.bus objectAtIndex:index];
    _descriptionImageView.frame = descriptionImageViewOriginalFrame;
    [self changeLabelHeightAndMoveImageViewByIndex:index];
    [self setBusRectByIndex:index];
//    descriptionImageViewOriginalFrame = ;

=======
=======
>>>>>>> 1111

//子景点变换时做出的相应
- (IBAction)scenicSubNameDidChanged:(id)sender
{
//    NSLog(@"%d",_scenicSubName.selectedSegmentIndex);
    int index = _scenicSubName.selectedSegmentIndex;
    _priceLabel.text = [self.base.price objectAtIndex:index];
    //加载相应的图片
    switch (index) {
        case 0:
        {
            _imageView1.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:0];
            _imageView2.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:1];
            _imageView3.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:2];
            _currentScenicSubImage = [NSString stringWithFormat:@"%d",index];
            break;
        }
        case 1:
        {
            _imageView1.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:0];
            _imageView2.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:1];
            _imageView3.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:2];
            _currentScenicSubImage = [NSString stringWithFormat:@"%d",index];
            break;
        }
        case 2:
        {
            _imageView1.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:0];
            _imageView2.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:1];
            _imageView3.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:2];
            _currentScenicSubImage = [NSString stringWithFormat:@"%d",index];
            break;
        }
        case 3:
        {
            _imageView1.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:0];
            _imageView2.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:1];
            _imageView3.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:2];
            _currentScenicSubImage = [NSString stringWithFormat:@"%d",index];
            break;
        }
        default:
            break;
    }
    _priceLabel.text    = [self.base.price objectAtIndex:index];
    _openTimeLabel.text = [self.base.openTime objectAtIndex:index];
    _addressLabel.text  = [self.base.address objectAtIndex:index];
    _rightBusLabel.text = [self.base.bus objectAtIndex:index];
    _descriptionImageView.frame = descriptionImageViewOriginalFrame;
    [self changeLabelHeightAndMoveImageViewByIndex:index];
    [self setBusRectByIndex:index];
//    descriptionImageViewOriginalFrame = ;
<<<<<<< HEAD

>>>>>>> 添加了中山路
=======

=======

>>>>>>> 有木有
//子景点变换时做出的相应
- (IBAction)scenicSubNameDidChanged:(id)sender
{
//    NSLog(@"%d",_scenicSubName.selectedSegmentIndex);
    int index = _scenicSubName.selectedSegmentIndex;
    _priceLabel.text = [self.base.price objectAtIndex:index];
    //加载相应的图片
    switch (index) {
        case 0:
        {
            _imageView1.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:0];
            _imageView2.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:1];
            _imageView3.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:2];
            _currentScenicSubImage = [NSString stringWithFormat:@"%d",index];
            break;
        }
        case 1:
        {
            _imageView1.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:0];
            _imageView2.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:1];
            _imageView3.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:2];
            _currentScenicSubImage = [NSString stringWithFormat:@"%d",index];
            break;
        }
        case 2:
        {
            _imageView1.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:0];
            _imageView2.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:1];
            _imageView3.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:2];
            _currentScenicSubImage = [NSString stringWithFormat:@"%d",index];
            break;
        }
        case 3:
        {
            _imageView1.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:0];
            _imageView2.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:1];
            _imageView3.image = [[self.base.imagesArray objectAtIndex:index] objectAtIndex:2];
            _currentScenicSubImage = [NSString stringWithFormat:@"%d",index];
            break;
        }
        default:
            break;
    }
    _priceLabel.text    = [self.base.price objectAtIndex:index];
    _openTimeLabel.text = [self.base.openTime objectAtIndex:index];
    _addressLabel.text  = [self.base.address objectAtIndex:index];
    _rightBusLabel.text = [self.base.bus objectAtIndex:index];
    _descriptionImageView.frame = descriptionImageViewOriginalFrame;
    [self changeLabelHeightAndMoveImageViewByIndex:index];
    [self setBusRectByIndex:index];
//    descriptionImageViewOriginalFrame = ;

<<<<<<< HEAD
>>>>>>> 更新了南普陀寺
=======
>>>>>>> 有木有
=======

>>>>>>> 1111
}
@end
