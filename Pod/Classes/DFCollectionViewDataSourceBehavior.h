//
//  DFCollectionViewDataSource.h
//  Pods
//
//  Created by Cezary Bielecki on 10.03.2015.
//
//

#import "DFBehavior.h"

@interface DFCollectionViewDataSourceBehavior : DFBehavior <UICollectionViewDataSource, UICollectionViewDelegate>

/*
 *  @brief Collection view that will be used in this behavior.
 */

@property (nonatomic, strong) IBOutlet UICollectionView *collectionView;

@end