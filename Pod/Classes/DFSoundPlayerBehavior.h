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
@property (nonatomic) IBInspectable BOOL shouldRepeat;

- (IBAction)playSound:(UIButton *)button;
- (IBAction)pauseSound:(UIButton *)button;
- (IBAction)stopSound:(UIButton *)button;

- (IBAction)volumeValueChanged:(UISlider *)slider;
- (IBAction)progressValueChanged:(UISlider *)slider;

@end