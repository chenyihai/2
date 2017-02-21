//
//  RegisterViewController.m
//  learningGit
//
//  Created by ios on 2017/2/21.
//  Copyright © 2017年 com.saiyimcu. All rights reserved.
//

#import "RegisterViewController.h"


@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.userName.text = self.userNameString;
    
    self.password.text = self.passwordString;
    
    
}
- (IBAction)registerAction:(UIButton *)sender {
    
    
    if(self.registerblock){
        
       self.registerblock(self.userName.text,self.password.text);
        
    }
        
    
    
    [self.navigationController popViewControllerAnimated:YES];
    
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
