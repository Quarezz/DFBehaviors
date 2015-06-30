//
//  DFSoundPlayerBehavior.m
//  Pods
//
//  Created by DigitalFormsMacbook on 04.05.2015.
//
//

#import "DFSoundPlayerBehavior.h"
#import <AVFoundation/AVFoundation.h>

@interface DFSoundPlayerBehavior ()

@property (nonatomic, strong) AVAudioPlayer *audioPlayer;

@end

@implementation DFSoundPlayerBehavior

- (void)playSound:(UIButton *)button
{
    [self.audioPlayer prepareToPlay];
    [self.audioPlayer play];
}

- (void)pauseSound:(UIButton *)button
{
    [self.audioPlayer pause];
}

- (void)stopSound:(UIButton *)button
{
    [self.audioPlayer stop];
}

- (void)setVolume:(float)volume
{
    _volume = volume;
    
    self.audioPlayer.volume = volume;
}

#pragma mark - lazy loading

- (AVAudioPlayer *)audioPlayer
{
    if (_audioPlayer == nil) {
        NSError *error;
        _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:self.filePath ofType:self.fileType]] error:&error];
        _audioPlayer.volume = self.volume;
        
        if (self.shouldRepeat) {
            _audioPlayer.numberOfLoops = -1;
        }
    }
    
    return _audioPlayer;
}

@end
