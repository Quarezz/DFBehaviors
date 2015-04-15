//
//  DFCollectionViewDataSource.m
//  Pods
//
//  Created by Cezary Bielecki on 10.03.2015.
//
//

#import "DFCollectionViewDataSourceBehavior.h"

@interface DFCollectionViewDataSourceBehavior ()

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation DFCollectionViewDataSourceBehavior

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 0;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return [[UICollectionViewCell alloc] init];
}

@end
