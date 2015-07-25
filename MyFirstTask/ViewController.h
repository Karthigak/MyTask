//
//  ViewController.h
//  MyFirstTask
//
//  Created by OBS_Macmini on 7/24/15.
//  Copyright (c) 2015 OptisolBusinessSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
@interface ViewController : UIViewController<UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
- (IBAction)pressBt:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *image;


@end

