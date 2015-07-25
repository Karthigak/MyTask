//
//  StatusViewController.m
//  MyFirstTask
//
//  Created by OBS_Macmini on 7/24/15.
//  Copyright (c) 2015 OptisolBusinessSolutions. All rights reserved.
//

#import "StatusViewController.h"

@interface StatusViewController ()

@end

@implementation StatusViewController
{
    NSArray *viewData;
    NSArray *subData;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    viewData=[NSArray arrayWithObjects:@"UITableView",@"UIImageView",@"Delegates",@"UIButton",@"UITextField", nil];
    subData=[NSArray arrayWithObjects:@"15-7-2015",@"16-7-2015",@"17-7-2015",@"18-7-2015",@"19-7-2015", nil];
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

    // Do any additional setup after loading the view from its nib.

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [viewData count];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier=@"simpleTableItem";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleTableIdentifier];
    }
    cell.detailTextLabel.text=[subData objectAtIndex:indexPath.row];
    cell.textLabel.text=[viewData objectAtIndex:indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *temp=[viewData objectAtIndex:indexPath.row];
    tableViewController *obj=[self.storyboard instantiateViewControllerWithIdentifier:@"tableViewController"];
    obj.temp=temp;obj.title=temp;
    [self.navigationController pushViewController:obj animated:YES];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)statusBt:(id)sender
{
    
        StatusViewController *status=[self.storyboard instantiateViewControllerWithIdentifier:@"StatusViewController"];
        [self.navigationController pushViewController:status animated:YES];
        
    }

- (IBAction)helppress:(id)sender
{
    helpViewController *help=[self.storyboard instantiateViewControllerWithIdentifier:@"helpViewController"];
    [self.navigationController pushViewController:help animated:YES];
}



- (IBAction)profilePress:(id)sender
{
    SecondViewController *second=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self.navigationController pushViewController:second animated:YES];
}
@end
