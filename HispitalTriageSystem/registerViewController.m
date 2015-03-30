//
//  registerViewController.m
//  HispitalTriageSystem
//
//  Created by Nero Zuo on 15/3/29.
//  Copyright (c) 2015年 Nero Zuo. All rights reserved.
//

#import "registerViewController.h"

@interface registerViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIView *registerView;
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *telephoneNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *medicareCardIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *confirmPasswordTextField;
@property (weak, nonatomic) IBOutlet UIButton *confirmButton;
- (IBAction)confirmButtonDidPress:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *userImageView;
@property (weak, nonatomic) IBOutlet UIImageView *telephoneNumberView;
@property (weak, nonatomic) IBOutlet UIImageView *passwordImageView;
@property (weak, nonatomic) IBOutlet UIImageView *passwordConfirmImageView;
@property (weak, nonatomic) IBOutlet UILabel *errorLabel;
@end

@implementation registerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setNeedsStatusBarAppearanceUpdate];
   
    self.userNameTextField.delegate =self;
    self.telephoneNumberTextField.delegate =self;
    self.medicareCardIDTextField.delegate = self;
    self.passwordTextField.delegate= self;
    self.confirmPasswordTextField.delegate = self;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    if ([textField isEqual:self.userNameTextField]) {
        [self.userNameTextField setBackground:[UIImage imageNamed:@"input-outline-active"]];
        [self.userImageView setImage:[UIImage imageNamed:@"icon-mail-active"]];
    }
    else
    {
        [self.userNameTextField setBackground:[UIImage imageNamed:@"input-outline"]];
        [self.userImageView setImage:[UIImage imageNamed:@"icon-mail"]];

    }
    if ([textField isEqual:self.telephoneNumberTextField]) {
        [self.telephoneNumberTextField setBackground:[UIImage imageNamed:@"input-outline-active"]];
        [self.telephoneNumberView setImage:[UIImage imageNamed:@"icon-comment-active"]];
    }
    else
    {
        [self.telephoneNumberTextField setBackground:[UIImage imageNamed:@"input-outline"]];
        [self.telephoneNumberView setImage:[UIImage imageNamed:@"icon-comment"]];
        
    }
    if ([textField isEqual:self.medicareCardIDTextField]) {
        [self.medicareCardIDTextField setBackground:[UIImage imageNamed:@"input-outline-active"]];
    }
    else
    {
        [self.medicareCardIDTextField setBackground:[UIImage imageNamed:@"input-outline"]];
        
    }
    if ([textField isEqual:self.passwordTextField]) {
        [self.passwordTextField setBackground:[UIImage imageNamed:@"input-outline-active"]];
        [self.passwordImageView setImage:[UIImage imageNamed:@"icon-password-active"]];
    }
    else
    {
        [self.passwordTextField setBackground:[UIImage imageNamed:@"input-outline"]];
        [self.passwordImageView setImage:[UIImage imageNamed:@"icon-password"]];
        
    }
    if ([textField isEqual:self.confirmPasswordTextField]) {
        [self.confirmPasswordTextField setBackground:[UIImage imageNamed:@"input-outline-active"]];
        [self.passwordConfirmImageView setImage:[UIImage imageNamed:@"icon-password-active"]];
    }
    else
    {
        [self.confirmPasswordTextField setBackground:[UIImage imageNamed:@"input-outline"]];
        [self.passwordConfirmImageView setImage:[UIImage imageNamed:@"icon-password"]];
    }

}
-(void)textFieldDidEndEditing:(UITextField *)textField
{

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

- (IBAction)confirmButtonDidPress:(id)sender
{
    NSUInteger t1 = self.userNameTextField.text.length;
    NSUInteger t2 = self.telephoneNumberTextField.text.length;
    NSUInteger t3 = self.medicareCardIDTextField.text.length;
    NSUInteger t4 = self.passwordTextField.text.length;
    NSUInteger t5 = self.confirmPasswordTextField.text.length;
    
    if (!t1 || !t2 || !t3 || !t4 || !t5) {
        [UIView animateWithDuration:0.1 animations:^{
            self.confirmButton.transform = CGAffineTransformMakeTranslation(10, 0);
        }completion:^(BOOL finished) {
            [UIView animateWithDuration:0.1 animations:^{
                self.confirmButton.transform = CGAffineTransformMakeTranslation(-10, 0);
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:0.1 animations:^{
                    self.confirmButton.transform = CGAffineTransformMakeTranslation(0, 0);
                }];
            }];
        }
         ];
        if(!t1)
        {
            [UIView animateWithDuration:0.1 animations:^{
                self.userNameTextField.transform = CGAffineTransformMakeTranslation(10, 0);
            }completion:^(BOOL finished) {
                [UIView animateWithDuration:0.1 animations:^{
                    self.userNameTextField.transform = CGAffineTransformMakeTranslation(-10, 0);
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.1 animations:^{
                        self.userNameTextField.transform = CGAffineTransformMakeTranslation(0, 0);
                    }];
                }];
            }
             ];
            [self.userNameTextField setBackground:[UIImage imageNamed:@"input-outline-error"]];
        }
        if(!t2)
        {
            [UIView animateWithDuration:0.1 animations:^{
                self.telephoneNumberTextField.transform = CGAffineTransformMakeTranslation(10, 0);
            }completion:^(BOOL finished) {
                [UIView animateWithDuration:0.1 animations:^{
                    self.telephoneNumberTextField.transform = CGAffineTransformMakeTranslation(-10, 0);
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.1 animations:^{
                        self.telephoneNumberTextField.transform = CGAffineTransformMakeTranslation(0, 0);
                    }];
                }];
            }
             ];
            [self.telephoneNumberTextField setBackground:[UIImage imageNamed:@"input-outline-error"]];
        }
        if(!t3)
        {
            [UIView animateWithDuration:0.1 animations:^{
                self.medicareCardIDTextField.transform = CGAffineTransformMakeTranslation(10, 0);
            }completion:^(BOOL finished) {
                [UIView animateWithDuration:0.1 animations:^{
                    self.medicareCardIDTextField.transform = CGAffineTransformMakeTranslation(-10, 0);
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.1 animations:^{
                        self.medicareCardIDTextField.transform = CGAffineTransformMakeTranslation(0, 0);
                    }];
                }];
            }
             ];
            [self.medicareCardIDTextField setBackground:[UIImage imageNamed:@"input-outline-error"]];
        }
        if(!t4)
        {
            [UIView animateWithDuration:0.1 animations:^{
                self.passwordTextField.transform = CGAffineTransformMakeTranslation(10, 0);
            }completion:^(BOOL finished) {
                [UIView animateWithDuration:0.1 animations:^{
                    self.passwordTextField.transform = CGAffineTransformMakeTranslation(-10, 0);
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.1 animations:^{
                        self.passwordTextField.transform = CGAffineTransformMakeTranslation(0, 0);
                    }];
                }];
            }
             ];
            [self.passwordTextField setBackground:[UIImage imageNamed:@"input-outline-error"]];
        }
        
        if(!t5)
        {
            [UIView animateWithDuration:0.1 animations:^{
                self.confirmPasswordTextField.transform = CGAffineTransformMakeTranslation(10, 0);
            }completion:^(BOOL finished) {
                [UIView animateWithDuration:0.1 animations:^{
                    self.confirmPasswordTextField.transform = CGAffineTransformMakeTranslation(-10, 0);
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.1 animations:^{
                        self.confirmPasswordTextField.transform = CGAffineTransformMakeTranslation(0, 0);
                    }];
                }];
            }
             ];
            [self.confirmPasswordTextField setBackground:[UIImage imageNamed:@"input-outline-error"]];
        }
        
        [UIView animateWithDuration:0.7 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:0 options:0 animations:^{
            [self.registerView setFrame:CGRectMake(self.registerView.frame.origin.x, self.registerView.frame.origin.y, self.registerView.frame.size.width, 469+20)];
        } completion:^(BOOL finished) {
        }];
        
    }
    else if (![self.confirmPasswordTextField.text isEqualToString:self.passwordTextField.text])
    {
       // NSLog(@"%@",self.confirmPasswordTextField.text);
       // NSLog(@"%@",self.passwordTextField.text);
            [UIView animateWithDuration:0.1 animations:^{
                self.passwordTextField.transform = CGAffineTransformMakeTranslation(10, 0);
            }completion:^(BOOL finished) {
                [UIView animateWithDuration:0.1 animations:^{
                    self.passwordTextField.transform = CGAffineTransformMakeTranslation(-10, 0);
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.1 animations:^{
                        self.passwordTextField.transform = CGAffineTransformMakeTranslation(0, 0);
                    }];
                }];
            }
             ];
            [self.passwordTextField setBackground:[UIImage imageNamed:@"input-outline-error"]];
        

            [UIView animateWithDuration:0.1 animations:^{
                self.confirmPasswordTextField.transform = CGAffineTransformMakeTranslation(10, 0);
            }completion:^(BOOL finished) {
                [UIView animateWithDuration:0.1 animations:^{
                    self.confirmPasswordTextField.transform = CGAffineTransformMakeTranslation(-10, 0);
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.1 animations:^{
                        self.confirmPasswordTextField.transform = CGAffineTransformMakeTranslation(0, 0);
                    }];
                }];
            }
             ];
            [self.confirmPasswordTextField setBackground:[UIImage imageNamed:@"input-outline-error"]];
        self.errorLabel.text = @"两次输入密码不同";
        [UIView animateWithDuration:0.7 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:0 options:0 animations:^{
            [self.registerView setFrame:CGRectMake(self.registerView.frame.origin.x, self.registerView.frame.origin.y, self.registerView.frame.size.width, 469+20)];
        } completion:^(BOOL finished) {
        }];
        

    }
    else
    {
        [self performSegueWithIdentifier:@"registerToHome" sender:sender];
        
    }
    
}

@end
