//
//  LoginViewController.m
//  me
//
//  Created by jam on 2018/1/5.
//  Copyright © 2018年 bangju. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIView *otherLoginWayView;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
- (IBAction)closelogin:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)forgetPassword:(id)sender {
}

- (IBAction)gologin:(id)sender {
}

- (IBAction)gocreateNew:(id)sender {
}

- (IBAction)wechatLogin:(id)sender {
}

@end
