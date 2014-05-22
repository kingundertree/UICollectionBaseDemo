//
//  ajkFlowLayout.h
//  collectionDemo
//
//  Created by shan xu on 14-2-18.
//  Copyright (c) 2014年 ajk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ajkFlowLayout : UICollectionViewFlowLayout
@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (nonatomic, assign) CGFloat damping;
@property (nonatomic, assign) CGFloat frequency;
@property (nonatomic, assign) CGFloat resistanceFactor;

@end
