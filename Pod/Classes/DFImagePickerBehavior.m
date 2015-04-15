//
//  DFImagePickerBehavior.m
//  Pods
//
//  Created by Cezary Bielecki on 10.03.2015.
//
//

#import "DFImagePickerBehavior.h"
#import "RotatingImagePickerController.h"

@interface DFImagePickerBehavior ()

@property (nonatomic, strong) UIPopoverController *popOverController;

@end

@implementation DFImagePickerBehavior

- (void)pickPhotoButtonAction:(UIButton *)button
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    alertController.popoverPresentationController.sourceView = button;
    alertController.popoverPresentationController.sourceRect = button.bounds;
    
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
        
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
        {
            self.popOverController = [[UIPopoverController alloc] initWithContentViewController:[self imagePickerControllerWithSourceType:sourceType]];
            
            [self.popOverController presentPopoverFromRect:self.targetButton.frame inView:self.targetButton permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
        }
        else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
        {
            [self.owner presentViewController:[self imagePickerControllerWithSourceType:sourceType] animated:YES completion:nil];
        }
    }];
}

- (UIImagePickerController *)imagePickerControllerWithSourceType:(UIImagePickerControllerSourceType)sourceType
{
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.modalPresentationStyle = UIModalPresentationCurrentContext;
    imagePickerController.delegate = self;
    imagePickerController.allowsEditing = self.allowsEditing;
    imagePickerController.sourceType = sourceType;
    return imagePickerController;
}

#pragma mark - UIImagePickerControllerDelegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    self.targetImageView.image = info[UIImagePickerControllerEditedImage];
    [self.targetButton setImage:info[UIImagePickerControllerEditedImage] forState:UIControlStateNormal];
    
    self.selectedImage = info[UIImagePickerControllerEditedImage];
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) [self.owner dismissViewControllerAnimated:YES completion:nil];
    
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self.owner dismissViewControllerAnimated:YES completion:nil];
}

@end