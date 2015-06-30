//
//  DFImagePickerBehavior.h
//  Pods
//
//  Created by Cezary Bielecki on 10.03.2015.
//
//

#import "DFBehavior.h"

@interface DFImagePickerBehavior : DFBehavior <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

/*
 *  @brief UIImageView to which photo will be loaded.
 */

@property (nonatomic, strong) IBOutlet UIImageView *targetImageView;

/*
 *  @brief UIButton to which photo will be loaded.
 */

@property (nonatomic, strong) IBOutlet UIButton *targetButton;

/*
 *  @brief Defines if photos should be taken from camera.
 */

@property (nonatomic) IBInspectable BOOL cameraAvailable;

/*
 *  @brief Defines if photos should be taken from photo library.
 */

@property (nonatomic) IBInspectable BOOL photoLibraryAvailable;

/*
 *  @brief Defines if photo should be edited after pick up.
 */

@property (nonatomic) IBInspectable BOOL allowsEditing;

/*!
 * @brief UIImage available after selecting.
 */

@property (nonatomic, strong) UIImage *selectedImage;

/**
 *  @brief IBAction method that allows to pick photo from photo library or camera.
 *
 *  @param button
 */

- (IBAction)pickPhotoButtonAction:(UIButton *)button;

/**
 *  Information if image is already taken or not.
 *
 *  @return BOOL value if image is selected.
 */

- (BOOL)isImageSelected;

@end