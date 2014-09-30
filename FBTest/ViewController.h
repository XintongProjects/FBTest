//
//  ViewController.h
//  FBTest
//
//  Created by Cindy Bi on 9/18/14.
//  Copyright (c) 2014 Xintong Bi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface ViewController : UIViewController <FBLoginViewDelegate>

- (IBAction)navigateToImagePicker:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *navigateToLoaderButton;


@end

