//
//  ViewController.m
//  MyFirstTask
//
//  Created by OBS_Macmini on 7/24/15.
//  Copyright (c) 2015 OptisolBusinessSolutions. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
    
}

- (IBAction)pressBt:(id)sender
{
if([self.username.text isEqualToString:@"optisol"] && [self.password.text isEqualToString:@"optisol"])
{
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"login" message:@"Successfully logged in" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    SecondViewController *second=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self.navigationController pushViewController:second animated:YES];
}
     else if([self.username.text isEqualToString:@""])
     {
         UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"login" message:@"Please enter the username" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
         [alert show];
            }
     else if([self.password.text isEqualToString:@""])
     {
         UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"login" message:@"Please enter the password" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
         [alert show];
     }

    else
    {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"login" message:@"logged in failed" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
}


@end

