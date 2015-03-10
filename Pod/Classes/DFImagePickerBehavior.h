//
//  DFImagePickerBehavior.h
//  Pods
//
//  Created by Cezary Bielecki on 10.03.2015.
//
//

#import "DFBehavior.h"

@interface DFImagePickerBehavior : DFBehavior

@property (nonatomic, strong) IBOutlet UIImageView *targetImageView;

- (IBAction)pickPhotoButtonAction:(UIButton *)button;

@end