//
//  DetailsTableViewController.m
//  OptionSelector
//
//  Created by Diana Elezaj on 8/13/15.
//  Copyright (c) 2015 Diana Elezaj. All rights reserved.
//

#import "DetailsTableViewController.h"
#import "AllCategoriesTableViewController.h"
#import "CQCategory.h"
#import <AVFoundation/AVFoundation.h> // this allows us to include sounds!


@interface DetailsTableViewController ()
{
    AVAudioPlayer *_audioPlayerDoorbell;
    AVAudioPlayer *_audioPlayerPhoneRinging;
    AVAudioPlayer *_audioPlayerVintagePhoneRinging;
    AVAudioPlayer *_audioPlayerTongueRolling;
    AVAudioPlayer *_audioPlayerTwoToneDoorbell;
    AVAudioPlayer *_audioPlayerTelephoneRing;
    AVAudioPlayer *_audioPlayerButtonClickOn;

}
@property (nonatomic) NSDictionary * navBarTitleTextAttributes;
@end

@implementation DetailsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

#pragma mark - Ringtones

    // this adds ringtone sound
    NSString *path = [NSString stringWithFormat:@"%@/Doorbell.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    // Create audio player object and initialize with URL to sound
    _audioPlayerDoorbell = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    
    NSString *path2 = [NSString stringWithFormat:@"%@/PhoneRinging.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl2 = [NSURL fileURLWithPath:path2];
    _audioPlayerPhoneRinging = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl2 error:nil];
    
    NSString *path3 = [NSString stringWithFormat:@"%@/VintagePhoneRinging.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl3 = [NSURL fileURLWithPath:path3];
    _audioPlayerVintagePhoneRinging = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl3 error:nil];
    
    NSString *path4 = [NSString stringWithFormat:@"%@/TongueRolling.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl4 = [NSURL fileURLWithPath:path4];
    _audioPlayerTongueRolling = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl4 error:nil];
    
    NSString *path5 = [NSString stringWithFormat:@"%@/TwoToneDoorbell.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl5 = [NSURL fileURLWithPath:path5];
    _audioPlayerTwoToneDoorbell = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl5 error:nil];
    
    NSString *path6 = [NSString stringWithFormat:@"%@/TelephoneRing.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl6 = [NSURL fileURLWithPath:path6];
    _audioPlayerTelephoneRing = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl6 error:nil];
    
    NSString *path7 = [NSString stringWithFormat:@"%@/ButtonClickOn.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl7 = [NSURL fileURLWithPath:path7];
    _audioPlayerButtonClickOn = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl7 error:nil];
}



 





#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.category.options.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OptionSelected" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.category.options objectAtIndex:indexPath.row];
    
    //checkmark methods
    cell.accessoryType = UITableViewCellAccessoryNone;
    if ([cell.textLabel.text isEqualToString:self.category.selection]) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    
    
    
    
    
     if ([self.category.selection isEqualToString: @"Doorbell" ]) {
        [_audioPlayerDoorbell play];
        [_audioPlayerPhoneRinging stop];
        [_audioPlayerTelephoneRing stop];
        [_audioPlayerTongueRolling stop];
        [_audioPlayerTwoToneDoorbell stop];
        [_audioPlayerVintagePhoneRinging stop];
    }
    else  if ([self.category.selection isEqualToString: @"Phone Ringing" ]) {
        [_audioPlayerPhoneRinging play];
        [_audioPlayerDoorbell stop];
        [_audioPlayerTelephoneRing stop];
        [_audioPlayerTongueRolling stop];
        [_audioPlayerTwoToneDoorbell stop];
        [_audioPlayerVintagePhoneRinging stop];
    }
    else  if ([self.category.selection isEqualToString: @"Vintage Phone Ringing" ]) {
        [_audioPlayerVintagePhoneRinging play];
        [_audioPlayerDoorbell stop];
        [_audioPlayerPhoneRinging stop];
        [_audioPlayerTelephoneRing stop];
        [_audioPlayerTongueRolling stop];
        [_audioPlayerTwoToneDoorbell stop];
     }
    else  if ([self.category.selection isEqualToString: @"Tongue Rolling" ]) {
        [_audioPlayerTongueRolling play];
        [_audioPlayerDoorbell stop];
        [_audioPlayerPhoneRinging stop];
        [_audioPlayerTelephoneRing stop];
        [_audioPlayerTwoToneDoorbell stop];
        [_audioPlayerVintagePhoneRinging stop];
    }
    else  if ([self.category.selection isEqualToString: @"Two Tone Doorbell" ]) {
        [_audioPlayerTwoToneDoorbell play];
        [_audioPlayerDoorbell stop];
        [_audioPlayerPhoneRinging stop];
        [_audioPlayerTelephoneRing stop];
        [_audioPlayerTongueRolling stop];
        [_audioPlayerVintagePhoneRinging stop];
    }
    else  if ([self.category.selection isEqualToString: @"Telephone Ring" ]) {
        [_audioPlayerTelephoneRing play];
        [_audioPlayerDoorbell stop];
        [_audioPlayerPhoneRinging stop];
        [_audioPlayerTongueRolling stop];
        [_audioPlayerTwoToneDoorbell stop];
        [_audioPlayerVintagePhoneRinging stop];
    }
   

     else [_audioPlayerButtonClickOn play];

    
    
    
    
    
    
    
    return cell;
}







#pragma mark Font color
- (void)tableView: (UITableView*)tableView
  willDisplayCell: (UITableViewCell*)cell
forRowAtIndexPath: (NSIndexPath*)indexPath
{
    //    cell.backgroundColor = indexPath.row % 2
    //    ? [UIColor colorWithRed:0.87 green:0.93 blue:0.98 alpha:1.0]
    //        : [UIColor whiteColor];
    
//    if ([self.category.selection isEqualToString: @"Yellow" ]) {
//        cell.backgroundColor = [UIColor yellowColor];
//    self.navigationController.navigationBar.barTintColor = [UIColor yellowColor];
//}
//      else  if ([self.category.selection isEqualToString: @"Red" ])
//            cell.backgroundColor = [UIColor redColor ];
//
//          else  if ([self.category.selection isEqualToString: @"Blue" ])
//              cell.backgroundColor = [UIColor blueColor];
//              else  if ([self.category.selection isEqualToString: @"Green" ])
//                  cell.backgroundColor = [UIColor greenColor];
//    
//    
 

    if ([self.category.selection isEqualToString: @"Yellow" ]) {
        
        
//        [[UINavigationBar appearance] setTitleTextAttributes:
//         [NSDictionary dictionaryWithObjectsAndKeys:
//          [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0],
//          UITextAttributeTextColor,
//          [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.8],
//          UITextAttributeTextShadowColor,
//          [NSValue valueWithUIOffset:UIOffsetMake(0, -1)],
//          UITextAttributeTextShadowOffset,
//          [UIFont fontWithName:@"Arial-Bold" size:0.0],
//          UITextAttributeFont,
//          nil]];
//        
        
      
        
        
        
        
        cell.textLabel.textColor = [UIColor yellowColor];
        self.navigationController.navigationBar.barTintColor = [UIColor yellowColor];
    }
    else  if ([self.category.selection isEqualToString: @"Red" ])
        cell.textLabel.textColor = [UIColor redColor ];
    
    else  if ([self.category.selection isEqualToString: @"Blue" ])
        cell.textLabel.textColor = [UIColor blueColor];
    else  if ([self.category.selection isEqualToString: @"Green" ])
        cell.textLabel.textColor = [UIColor greenColor];
    
    
    
    
    cell.backgroundColor = [UIColor clearColor];

    
    if ([self.category.selection isEqualToString: @"Rainy Day" ]) {
        [self backgroundImageChanged:@"rainyDay"];
        
    }
    
    else if ([self.category.selection isEqualToString: @"Snowflakes" ]) {
        [self backgroundImageChanged:@"snowflakes"];
    }
    else if ([self.category.selection isEqualToString: @"Yellow flower" ]) {
        [self backgroundImageChanged:@"yellowFlower"];
    }
    else if ([self.category.selection isEqualToString: @"Abstract yellow" ]) {
        [self backgroundImageChanged:@"abstract-yellow-wallpaper"];
    }
    else if ([self.category.selection isEqualToString: @"Digital waves" ]) {
        [self backgroundImageChanged:@"digital-waves-background"];
    }
    else if ([self.category.selection isEqualToString: @"Art" ]) {
        [self backgroundImageChanged:@"art"];
    }
    else if ([self.category.selection isEqualToString: @"Orange View" ]) {
        [self backgroundImageChanged:@"orange"];
    }
    
}


-(void) backgroundImageChanged : (NSString *)name {
//    self.navigationController.view.backgroundColor =
//    [UIColor colorWithPatternImage:[UIImage imageNamed:name]];
//    self.tableView.backgroundColor = [UIColor clearColor];
//    
    
    
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:name] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
}



    



- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    self.category.selection = [self.category.options objectAtIndex:indexPath.row];
    
    [self.delegate.tableView reloadData];
    
    [self.tableView reloadData];
    
    
}
@end
