//
//  DFCollectionViewDataSource.h
//  Pods
//
//  Created by Cezary Bielecki on 10.03.2015.
//
//

#import "DFBehavior.h"

@interface DFCollectionViewDataSourceBehavior : DFBehavior <UICollectionViewDataSource>

@property (nonatomic, strong) IBOutlet UICollectionView *collectionView;

@end