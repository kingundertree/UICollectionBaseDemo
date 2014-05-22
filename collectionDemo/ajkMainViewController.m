//
//  ajkMainViewController.m
//  collectionDemo
//
//  Created by shan xu on 14-2-18.
//  Copyright (c) 2014年 ajk. All rights reserved.
//

#import "ajkMainViewController.h"

@interface ajkMainViewController ()

@end

static NSString *ItemIdentifier = @"ItemIdentifier";

@implementation ajkMainViewController
@synthesize cellLayOut;

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
    self.title = @"UICollection Demo";
}

-(void)loadView{
    self.cellLayOut = [[ajkFlowLayout alloc] init];
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:self.cellLayOut];
    [self.collectionView registerClass:[ajkCell class] forCellWithReuseIdentifier:ItemIdentifier];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    self.collectionView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
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
