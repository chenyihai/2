//
//  RegisterViewController.h
//  learningGit
//
//  Created by ios on 2017/2/21.
//  Copyright © 2017年 com.saiyimcu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface RegisterViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UIButton *registerBtn;
@property (copy, nonatomic) NSString *userNameString;
@property (copy, nonatomic) NSString *passwordString;
@property (copy, nonatomic) Callback registerblock;

@end
