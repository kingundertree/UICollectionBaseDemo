//
//  ajkMVViewController.m
//  collectionDemo
//
//  Created by shan xu on 14-2-19.
//  Copyright (c) 2014年 ajk. All rights reserved.
//

#import "ajkMVViewController.h"

#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 70000
#define IOS7_SDK_AVAILABLE 1
#endif

@interface ajkMVViewController ()

@end

static NSString *ItemIdentifier = @"ItemIdentifier";

@implementation ajkMVViewController

@synthesize cellLayOut;
//@synthesize cView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.title = @"UICollection Demoer";

    
    if (IOS7_SDK_AVAILABLE) {
        if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)])
        {
            self.edgesForExtendedLayout = UIRectEdgeNone;
        }
    }

    [self loadViewOn];
}

-(void)loadViewOn{
    self.cellLayOut = [[ajkFlowLayout alloc] init];
    
    UICollectionView *cView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, 320, SCREENHEIGHT-64) collectionViewLayout:self.cellLayOut];
    [cView registerClass:[ajkCell class] forCellWithReuseIdentifier:ItemIdentifier];
    cView.delegate = self;
    cView.dataSource = self;
    cView.indicatorStyle = UIScrollViewIndicatorStyleDefault;
//    self.cView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
    
    [self.view addSubview:cView];
}

#pragma mark - UICollectionView DataSource & Delegate methods

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 100;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ajkCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ItemIdentifier forIndexPath:indexPath];
    
    [cell setImage:[UIImage imageNamed:@"1.jpg"] str:[NSString stringWithFormat:@"indexNum%d",indexPath.row]];
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
