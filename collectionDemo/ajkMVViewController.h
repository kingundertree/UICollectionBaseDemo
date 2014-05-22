//
//  ajkMVViewController.h
//  collectionDemo
//
//  Created by shan xu on 14-2-19.
//  Copyright (c) 2014年 ajk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ajkCell.h"
#import "ajkFlowLayout.h"

@interface ajkMVViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property(nonatomic,strong) ajkFlowLayout *cellLayOut;
//@property(nonatomic,strong) UICollectionView *cView;
@end
