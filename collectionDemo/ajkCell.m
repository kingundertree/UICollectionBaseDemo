//
//  ajkCell.m
//  collectionDemo
//
//  Created by shan xu on 14-2-18.
//  Copyright (c) 2014年 ajk. All rights reserved.
//

#import "ajkCell.h"

@implementation ajkCell
@synthesize imageView;
@synthesize lab;
- (id)initWithFrame:(CGRect)frame
{
    if (!(self = [super initWithFrame:frame])) return nil;
    
//    self.imageView = [[UIImageView alloc] initWithFrame:CGRectInset(CGRectMake(0, 0, 120, 90), 5, 5)];
//    self.imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
//    [self.contentView addSubview:self.imageView];
    
    self.backgroundColor = [UIColor whiteColor];
    
    self.lab = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, 120, 20)];
    [self.contentView addSubview:lab];
    
    return self;
}
-(void)prepareForReuse
{
    [self setImage:nil str:nil];
}

-(void)setImage:(UIImage *)image str:(NSString *)str
{
//    self.imageView.image = image;
    self.lab.text = str;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
