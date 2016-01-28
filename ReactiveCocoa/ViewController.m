//
//  ViewController.m
//  ReactiveCocoa
//
//  Created by Tayoji on 16/1/20.
//  Copyright © 2016年 Tayoji. All rights reserved.
//

#import "ViewController.h"
#import <AdSupport/AdSupport.h>
#import "View1Controller.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usertextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton    *loginButton;
@property (nonatomic,copy)NSArray * dateArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"发现";
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,nil]];
    NSString *IDFA = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    NSLog(@"%@",[IDFA class]);
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"iconfont-fanhui"] forState:UIControlStateNormal];
    button.frame=CGRectMake(0, 0, 30, 60);
    [button setTitle:@"返回" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:button];
 
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}
-(void)viewWillAppear:(BOOL)animated
{
    [self.navigationController pushViewController:[[View1Controller alloc] init] animated:NO];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

    // Dispose of any resources that can be recreated.
}

@end
