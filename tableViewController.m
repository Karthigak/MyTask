//
//  tableViewController.m
//  MyFirstTask
//
//  Created by OBS_Macmini on 7/24/15.
//  Copyright (c) 2015 OptisolBusinessSolutions. All rights reserved.
//

#import "tableViewController.h"

@interface tableViewController ()<UITextViewDelegate>
{
    UITextView *text1;
}
@end

@implementation tableViewController
@synthesize textView;
- (void)viewDidLoad {
    [super viewDidLoad];
 
    

    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"logout"
                                                             style:UIBarButtonItemStylePlain
                                                            target:self
                                                            action:@selector(showPicker)];
    self.navigationItem.rightBarButtonItem=item;

    
    // Do any additional setup after loading the view.
}
-(void)showPicker
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}




    // Do any additional setup after loading the view.

-(void)viewWillAppear:(BOOL)animated
{
    if([self.temp isEqualToString:@"UITableView"])
    {
        
        
        [textView setText:@"Displays a single-column list of multiple rows through which users can scroll. Each row in a table view is a UITableViewCell object. The plain style table view displays rows that occupy the full width of the view and can display optional headers and footers for arbitrary sections of rows and for the table as a whole. The grouped style table view displays distinct groups of rows inset from the edges of the view and can display optional headers and footers between groups. A user can edit a table by inserting, deleting, and reordering table cells."];

        }
    else if([self.temp isEqualToString:@"UIImageView"])
    {
        [textView setText:@"Displays a single image, or an animation described by an array of images."];
      
        }
    else if([self.temp isEqualToString:@"Delegates"])
    {        [textView setText:@"Let's assume an object A calls an object B to perform an action. Once the action is complete, object A should know that B has completed the task and take necessary action. This is achieved with the help of delegates."];
        
}
    else if([self.temp isEqualToString:@"UIButton"])
    {
        [textView setText:@"Implements a button that intercepts touch events and sends an action message to a target object when it's tapped. You can set the title, image, and other appearance properties of a button. In addition, you can specify a different appearance for each button state."];
        

}
    else if([self.temp isEqualToString:@"UITextField"])
    {
        
        [textView setText:@"Displays a rounded rectangle that can contain editable text. When a user taps a text field, a keyboard appears; when a user taps Return in the keyboard, the keyboard disappears and the text field can handle the input in an application-specific way. UITextField supports overlay views to display additional information, such as a bookmarks icon. UITextField also provides a clear text control a user taps to erase the contents of the text field."];
        
    }

}

- (void)didReceiveMemoryWarning {
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
