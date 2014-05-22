//
//  ajkCell.h
//  collectionDemo
//
//  Created by shan xu on 14-2-18.
//  Copyright (c) 2014年 ajk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ajkCell : UICollectionViewCell
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *lab;

-(void)setImage:(UIImage *)image str:(NSString *)str;

@end
