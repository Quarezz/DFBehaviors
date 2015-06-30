//
//  DFExampleCollectionViewController.m
//  DFBehaviors
//
//  Created by Cezary Bielecki on 30.06.2015.
//  Copyright (c) 2015 Digitalforms. All rights reserved.
//

#import "DFExampleCollectionViewController.h"
#import "DFExampleCollectionViewDataSourceDelegateBehavior.h"

@interface DFExampleCollectionViewController ()

@property (strong, nonatomic) IBOutlet DFExampleCollectionViewDataSourceDelegateBehavior *collectionViewDataSourceDelegateBehavior;

@end

@implementation DFExampleCollectionViewController

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [[self collectionViewDataSourceDelegateBehavior] numberOfSectionsInCollectionView:collectionView];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[self collectionViewDataSourceDelegateBehavior] collectionView:collectionView numberOfItemsInSection:section];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    return [[self collectionViewDataSourceDelegateBehavior] collectionView:collectionView cellForItemAtIndexPath:indexPath];
}

#pragma mark <UICollectionViewDelegate>

- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
    return [[self collectionViewDataSourceDelegateBehavior] collectionView:collectionView shouldHighlightItemAtIndexPath:indexPath];
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return [[self collectionViewDataSourceDelegateBehavior] collectionView:collectionView shouldSelectItemAtIndexPath:indexPath];
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
    return [[self collectionViewDataSourceDelegateBehavior] collectionView:collectionView shouldShowMenuForItemAtIndexPath:indexPath];
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
    return [[self collectionViewDataSourceDelegateBehavior] collectionView:collectionView canPerformAction:action forItemAtIndexPath:indexPath withSender:sender];
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
    return [[self collectionViewDataSourceDelegateBehavior] collectionView:collectionView performAction:action forItemAtIndexPath:indexPath withSender:sender];
}

@end