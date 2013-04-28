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
        rect.size.height += SEGMENT_HEIGHT;
        rect.origin.y -= SEGMENT_HEIGHT;
        _baseScrollView.frame = rect;
        CGRect rectImage = self.imagesScrollView.frame;
        rectImage.origin.y -= SEGMENT_HEIGHT;
        self.imagesScrollView.frame = rectImage;
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
        case kNanputuoNameType:
        {
            _imageView1.image = [UIImage imageNamed:kTianwangdian_pic1];
            _imageView2.image = [UIImage imageNamed:kTianwangdian_pic2];
            _imageView3.image = [UIImage imageNamed:kTianwangdian_pic3];
            break;
        }
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
            break;

        }
        case kNanhualuNameType:
        {
            _imageView1.image = [UIImage imageNamed:kNanhualu_pic1];
            _imageView2.image = [UIImage imageNamed:kNanhualu_pic2];
            _imageView3.image = [UIImage imageNamed:kNanhualu_pic3];
            break;

        }
        case kHuandaoluNameType:
        {
            _imageView1.image = [UIImage imageNamed:kHuandaolu_pic1];
            _imageView2.image = [UIImage imageNamed:kHuandaolu_pic2];
            _imageView3.image = [UIImage imageNamed:kHuandaolu_pic3];
            break;

        }
        case kGuanyinshanNameType:
        {
            _imageView1.image = [UIImage imageNamed:kGuanyinshan_pic1];
            _imageView2.image = [UIImage imageNamed:kGuanyinshan_pic2];
            _imageView3.image = [UIImage imageNamed:kGuanyinshan_pic3];
            break;
            
        }

//            kTiedaoNameType,
//            kChenjiagengNameType,
//            kHaiwanNameType,
//        kJimeiNameType:
//            <#statements#>
//            break;
            
        default:
            break;
    }
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
    
    //设置委托
    _imagesScrollView.delegate = self;
    _baseScrollView.delegate = self;
    _baseScrollView.pagingEnabled = YES;
    //scrollview只能横向滑动或者竖向滑动
    
    _basePageControl = [[UIPageControl alloc] init];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _baseScrollView.alwaysBounceVertical = YES;
    _imagesScrollView.directionalLockEnabled = YES;
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
        [vc setValue:[self.base.imagesArray objectAtIndex:[_currentScenicSubImage intValue]]  forKey:@"imagesArray"];
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

}
@end
