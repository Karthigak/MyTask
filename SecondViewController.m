//
//  SecondViewController.m
//  MyFirstTask
//
//  Created by OBS_Macmini on 7/24/15.
//  Copyright (c) 2015 OptisolBusinessSolutions. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
{

}

@end

@implementation SecondViewController
@synthesize firstnameTxt,lastnameTxt,ageTxt,educationTxt;
- (void)viewDidLoad
{
    [super viewDidLoad];
 
//    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"logout"
//                                                                                          style:UIBarButtonItemStylePlain
//                                                                                         target:self
//                                                            action:@selector(showPicker)];
//    self.navigationItem.rightBarButtonItem=item;

// Do any additional setup after loading the view.
}

-(void)showPicker
{
    ViewController *first=[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self.navigationController pushViewController:first
                                         animated:YES];

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showCamera:(id)sender
{
    imagePicker =[[UIImagePickerController alloc]init];
        imagePicker.allowsEditing = YES;
    imagePicker.delegate=self;
    if ([UIImagePickerController isSourceTypeAvailable:
         UIImagePickerControllerSourceTypeCamera])
    {
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    }
    else
    {
        imagePicker.sourceType =
        UIImagePickerControllerSourceTypePhotoLibrary;
    }
    [self presentViewController:(UIImagePickerController *)imagePicker animated:YES completion:nil];
    
}
-(IBAction)profileBt:(id)sender
{
    SecondViewController *second=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self.navigationController pushViewController:second animated:YES];
    
}


- (IBAction)statusBt:(id)sender
{
    StatusViewController *status=[self.storyboard instantiateViewControllerWithIdentifier:@"StatusViewController"];
    [self.navigationController pushViewController:status animated:YES];

}

- (IBAction)helpBt:(id)sender
{
    helpViewController *help=[self.storyboard instantiateViewControllerWithIdentifier:@"helpViewController"];
    [self.navigationController pushViewController:help animated:YES];
}


-(void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
    UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
    if (image == nil)
    {
        image = [info objectForKey:UIImagePickerControllerOriginalImage];
    }
    imageView.image = image;
    
    [self dismissViewControllerAnimated:YES completion:nil];

}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
