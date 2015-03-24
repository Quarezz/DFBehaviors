//
//  DFImagePickerBehavior.h
//  Pods
//
//  Created by Cezary Bielecki on 10.03.2015.
//
//

#import "DFBehavior.h"

@interface DFImagePickerBehavior : DFBehavior <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) IBOutlet UIImageView *targetImageView;

@property (nonatomic) IBInspectable BOOL cameraAvailable;
@property (nonatomic) IBInspectable BOOL photoLibraryAvailable;
@property (nonatomic) IBInspectable BOOL allowsEditing;

@property (nonatomic) UIImage *selectedImage;

- (IBAction)pickPhotoButtonAction:(UIButton *)button;
- (BOOL)isImageSelected;

@end