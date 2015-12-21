//
//  AppDelegate.h
//  OptionSelector
//
//  Created by Michael Kavouras on 8/9/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface AppDelegate :UIResponder <UIApplicationDelegate, AVAudioPlayerDelegate> {
    
    AVAudioPlayer *pastryMusic;
}

@property (strong, nonatomic) UIWindow *window;


@end

