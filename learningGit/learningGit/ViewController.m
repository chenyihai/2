//
//  ViewController.m
//  learningGit
//
//  Created by ios on 2017/2/21.
//  Copyright © 2017年 com.saiyimcu. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"
#import "RegisterViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)loginAction:(UIButton *)sender {
    
    // 1. 获取视图控制器所在的storyboard
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    LoginViewController *vc = (LoginViewController *)[mainStoryboard instantiateViewControllerWithIdentifier:@"LoginViewControllerID"];
    
    if (self.userName.text && self.password.text) {
        vc.userNameString = self.userName.text;
        
        vc.passwordString = self.password.text;
    }else{
        vc.userNameString = @"无名氏";
        
        vc.passwordString = @"无密码";
    }
    
    
    NSLog(@"登录：vc.userNameString=%@,vc.passwordString=%@",vc.userNameString,vc.passwordString);
    
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)registerAction:(UIButton *)sender {
    
    // 1. 获取视图控制器所在的storyboard
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    RegisterViewController *vc = (RegisterViewController *)[mainStoryboard instantiateViewControllerWithIdentifier:@"RegisterViewControllerID"];
    
    if (self.userName.text && self.password.text) {
        vc.userNameString = self.userName.text;
        
        vc.passwordString = self.password.text;
    }else{
        vc.userNameString = @"无名氏";
        
        vc.passwordString = @"无密码";
    }
    
    
    
    NSLog(@"登录：vc.userNameString=%@,vc.passwordString=%@",vc.userNameString,vc.passwordString);
    
    vc.registerblock = ^(NSString *userNameStr,NSString *passwordStr){
        
        self.userName.text = userNameStr;
        
        self.password.text = passwordStr;
    };
        
    
        
    
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
