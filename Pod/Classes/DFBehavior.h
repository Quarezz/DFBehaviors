//
//  Behavior.h
//  Pods
//
//  Created by DigitalFormsMacbook on 04.02.2015.
//
//

#import <Foundation/Foundation.h>
#import "objc/runtime.h"
#import <UIKit/UIKit.h>

@interface DFBehavior : UIControl

@property(nonatomic, weak) IBOutlet id owner;

- (void)bindLifetimeToObject:(id)object;
- (void)releaseLifetimeFromObject:(id)object;

@end
