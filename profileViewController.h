//
//  profileViewController.h
//  MyFirstTask
//
//  Created by OBS_Macmini on 7/25/15.
//  Copyright (c) 2015 OptisolBusinessSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface profileViewController : UIViewController<UITextViewDelegate>
@property (nonatomic,strong) NSString *temp;
@property (nonatomic,strong) IBOutlet UITextView *text;

@end
