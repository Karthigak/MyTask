//
//  StatusViewController.h
//  MyFirstTask
//
//  Created by OBS_Macmini on 7/24/15.
//  Copyright (c) 2015 OptisolBusinessSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "tableViewController.h"
#import "ViewController.h"
#import "SecondViewController.h"
#import "helpViewController.h"

@interface StatusViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;
- (IBAction)statusBt:(id)sender;
- (IBAction)helppress:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *profileBt;
@property (weak, nonatomic) IBOutlet UIButton *helpBt;
@property (weak, nonatomic) IBOutlet UIButton *statusBt;


- (IBAction)profilePress:(id)sender;
@end
