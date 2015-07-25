//
//  SecondViewController.h
//  MyFirstTask
//
//  Created by OBS_Macmini on 7/24/15.
//  Copyright (c) 2015 OptisolBusinessSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StatusViewController.h"
#import "ViewController.h"
#import "tableViewController.h"
#import "helpViewController.h"

@interface SecondViewController : UIViewController<UIImagePickerControllerDelegate,UITextFieldDelegate,UIBarPositioningDelegate>
{
    UIImagePickerController *imagePicker;
    
    IBOutlet UIImageView *imageView;
}
@property (weak, nonatomic) IBOutlet UITextField *firstnameTxt;
@property (weak, nonatomic) IBOutlet UITextField *lastnameTxt;
@property (weak, nonatomic) IBOutlet UITextField *ageTxt;
@property (weak, nonatomic) IBOutlet UITextField *educationTxt;
@property (weak, nonatomic) IBOutlet UIButton *firstBt;
@property (weak, nonatomic) IBOutlet UIButton *secondBt;
@property (weak, nonatomic) IBOutlet UIButton *thirdBt;

- (IBAction)showCamera:(id)sender;

- (IBAction)profileBt:(id)sender;
- (IBAction)statusBt:(id)sender;
- (IBAction)helpBt:(id)sender;

@end
