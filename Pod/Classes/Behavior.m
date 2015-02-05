//
//  Behavior.m
//  Pods
//
//  Created by DigitalFormsMacbook on 04.02.2015.
//
//

#import "Behavior.h"

@implementation Behavior

- (void)setOwner:(id)owner
{
    if (_owner != owner)
    {
        [self releaseLifetimeFromObject:_owner];
        _owner = owner;
        [self bindLifetimeToObject:_owner];
    }
}

- (void)bindLifetimeToObject:(id)object
{
    objc_setAssociatedObject(object, (__bridge void *)self, self, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)releaseLifetimeFromObject:(id)object
{
    objc_setAssociatedObject(object, (__bridge void *)self, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end