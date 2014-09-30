//
//  ViewController.m
//  FBTest
//
//  Created by Cindy Bi on 9/18/14.
//  Copyright (c) 2014 Xintong Bi. All rights reserved.
//

#import "ViewController.h"
#import <FacebookSDK/FacebookSDK.h>
#import "AppDelegate.h"
#import "ImageLoaderViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [APP_DELEGATE cleanCookies];
    FBLoginView *loginView = [[FBLoginView alloc] init];
    
    loginView.center = self.view.center;
    
    [self.view addSubview:loginView];
    
    if (FBSession.activeSession.isOpen)
    {
        self.navigateToLoaderButton.enabled = YES;
    }
    else{
        self.navigateToLoaderButton.enabled = NO;
    }
    
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if (FBSession.activeSession.isOpen)
    {
        self.navigateToLoaderButton.enabled = YES;
    }
    else{
        self.navigateToLoaderButton.enabled = NO;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)navigateToImagePicker:(id)sender {
    
    ImageLoaderViewController *imageLoaderViewController = [[ImageLoaderViewController alloc] initWithNibName:@"ImageLoaderViewController" bundle:nil];
    
    [self.navigationController pushViewController:imageLoaderViewController animated:YES];
    
//    
//    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
//    imagePicker.delegate = self;
//    // On the iPad we need to present the image picker in a popover.
//    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
//        // If a popover is already showing, dismiss it before presenting a new one.
//        // We own this instance of the popover controller but will release it in popoverControllerDidDismissPopover.
//        UIPopoverController *popoverController = [[UIPopoverController alloc] initWithContentViewController:imagePicker];
//        popoverController.delegate = self;
//        self.popover = popoverController;
//        [popoverController presentPopoverFromBarButtonItem:self.pickerButton permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
//    }else{
//        [self presentModalViewController:imagePicker animated:YES];
//    }
//    [imagePicker release];
}



@end
