//
//  helpViewController.m
//  MyFirstTask
//
//  Created by OBS_Macmini on 7/24/15.
//  Copyright (c) 2015 OptisolBusinessSolutions. All rights reserved.
//

#import "helpViewController.h"

@interface helpViewController ()

@end

@implementation helpViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *strURL = @"https://www.google.co.in/?gfe_rd=cr&ei=MB-yVb2YEqTv8we9ib6oCQ";
    NSURL *url = [NSURL URLWithString:strURL];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webview loadRequest:urlRequest];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"logout"
                                                             style:UIBarButtonItemStylePlain
                                                            target:self
                                                            action:@selector(showPicker)];
    self.navigationItem.rightBarButtonItem=item;
    
    // Do any additional setup after loading the view.
}
-(void)showPicker
{
//    ViewController *first=[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
//    [self.navigationController pushViewController:first
//                                         animated:YES];
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

    // Do any additional setup after loading the view.


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
