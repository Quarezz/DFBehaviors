//
//  DFImagePickerBehavior.m
//  Pods
//
//  Created by Cezary Bielecki on 10.03.2015.
//
//

#import "DFImagePickerBehavior.h"
#import <UIActionSheet+Blocks.h>

@implementation DFImagePickerBehavior

- (void)pickPhotoButtonAction:(UIButton *)button
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera] && self.cameraAvailable)
    {
        [alertController addAction:[self alertActionWithTitle:@"Camera" sourceType:UIImagePickerControllerSourceTypeCamera]];
    }
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary] && self.photoLibraryAvailable)
    {
        [alertController addAction:[self alertActionWithTitle:@"Photo library" sourceType:UIImagePickerControllerSourceTypePhotoLibrary]];
    }
    
    if (alertController.actions.count) [self.owner presentViewController:alertController animated:YES completion:nil];
}

- (BOOL)isImageSelected
{
    return self.selectedImage != nil;
}

#pragma mark - Factories

- (UIAlertAction *)alertActionWithTitle:(NSString *)title sourceType:(UIImagePickerControllerSourceType)sourceType
{
    return [UIAlertAction actionWithTitle:title style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self.owner presentViewController:[self imagePickerControllerWithSourceType:sourceType] animated:YES completion:nil];
    }];
}

- (UIImagePickerController *)imagePickerControllerWithSourceType:(UIImagePickerControllerSourceType)sourceType
{
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.delegate = self;
    imagePickerController.allowsEditing = self.allowsEditing;
    imagePickerController.sourceType = sourceType;
    return imagePickerController;
}

#pragma mark - UIImagePickerControllerDelegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    self.targetImageView.image = info[UIImagePickerControllerEditedImage];
    self.selectedImage = info[UIImagePickerControllerEditedImage];
    [self.owner dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self.owner dismissViewControllerAnimated:YES completion:nil];
}

@end