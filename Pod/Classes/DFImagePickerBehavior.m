//
//  DFImagePickerBehavior.m
//  Pods
//
//  Created by Cezary Bielecki on 10.03.2015.
//
//

#import "DFImagePickerBehavior.h"

@interface DFImagePickerBehavior ()

@property (nonatomic, strong) UIPopoverController *popOverController;

@end

@implementation DFImagePickerBehavior

- (void)pickPhotoButtonAction:(UIButton *)button
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Choose photo source" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
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
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        [self.owner dismissViewControllerAnimated:YES completion:nil];
    }]];
    
    if (alertController.actions.count) [self.owner presentViewController:alertController animated:YES completion:nil];
}

- (BOOL)isImageSelected
{
    return self.selectedImage != nil;
}

#pragma mark - Factories

- (UIAlertAction *)alertActionWithTitle:(NSString *)title sourceType:(UIImagePickerControllerSourceType)sourceType
{
    __weak typeof(self) weakSelf = self;
    
    return [UIAlertAction actionWithTitle:title style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        __strong typeof(self) strongSelf = weakSelf;
        
        if (!strongSelf) {
            return;
        }
        
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
        {
            strongSelf.popOverController = [[UIPopoverController alloc] initWithContentViewController:[strongSelf imagePickerControllerWithSourceType:sourceType]];
            
            [strongSelf.popOverController presentPopoverFromRect:strongSelf.targetButton.frame inView:strongSelf.targetButton permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
        }
        else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
        {
            [strongSelf.owner presentViewController:[strongSelf imagePickerControllerWithSourceType:sourceType] animated:YES completion:nil];
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

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage *image;
    
    if (self.allowsEditing){
        image = info[UIImagePickerControllerEditedImage];
    }
    else{
        image = info[UIImagePickerControllerOriginalImage];
    }
    
    self.targetImageView.image = image;
    [self.targetButton setImage:image forState:UIControlStateNormal];
    
    self.selectedImage = image;
    
    [self.owner dismissViewControllerAnimated:YES completion:nil];
    
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self.owner dismissViewControllerAnimated:YES completion:nil];
}

@end