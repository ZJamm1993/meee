//
//  BaseCollectionViewController.h
//  yangsheng
//
//  Created by Macx on 17/7/14.
//  Copyright © 2017年 jam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AdvertiseView.h"

@interface BaseCollectionViewController : UICollectionViewController<AdvertiseViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate>

@property (nonatomic,strong) NSMutableArray* dataSource;
@property (nonatomic,strong) NSMutableArray* advsArray;

@property (nonatomic,assign) NSInteger currentPage;
@property (nonatomic,assign) NSInteger pageSize;
@property (nonatomic,assign) BOOL shouldLoadMore;

-(void)firstLoad;
-(void)refresh;

-(void)loadMore;

-(void)setAdvertiseHeaderViewWithPicturesUrls:(NSArray*)picturesUrls;

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section;

-(void)showLoadMoreView;
-(void)hideLoadMoreView;

@end
