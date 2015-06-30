//
//  DFSoundPlayerBehavior.h
//  Pods
//
//  Created by DigitalFormsMacbook on 04.05.2015.
//
//

#import "DFBehavior.h"

@interface DFSoundPlayerBehavior : DFBehavior

@property (nonatomic) IBInspectable NSString *filePath;
@property (nonatomic) IBInspectable NSString *fileType;
@property (nonatomic) IBInspectable BOOL shouldRepeat;
@property (nonatomic) IBInspectable float volume;

/**
 *  @brief IBAction method that play desired sound.
 *
 *  @param button
 */

- (IBAction)playSound:(UIButton *)button;

/**
 *  @brief IBAction method that pause desired sound.
 *
 *  @param button
 */

- (IBAction)pauseSound:(UIButton *)button;

/**
 *  @brief IBAction method that stops desired sound.
 *
 *  @param button
 */

- (IBAction)stopSound:(UIButton *)button;

@end