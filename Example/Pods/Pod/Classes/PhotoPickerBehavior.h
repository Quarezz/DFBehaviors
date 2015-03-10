//
//  PhotoPickerBehavior.h
//  Pods
//
//  Created by DigitalFormsMacbook on 04.02.2015.
//
//

#import "Behavior.h"

typedef NS_ENUM(NSUInteger, DFImagePickerBehaviourSourceType) {
    DFImagePickerBehaviourSourceTypeBoth = 0,
    DFImagePickerBehaviourSourceTypeCamera = 1,
    DFImagePickerBehaviourSourceTypeLibrary = 2,
};

@interface PhotoPickerBehavior : Behavior <UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIActionSheetDelegate>

@property(nonatomic, assign) IBInspectable NSInteger sourceType;

@property(nonatomic, weak) IBOutlet UIImageView *targetImageView;

- (IBAction)pickImageFromButton:(UIButton *)sender;

@end
