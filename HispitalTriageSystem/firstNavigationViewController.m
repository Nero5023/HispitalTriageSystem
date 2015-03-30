//
//  firstNavigationViewController.m
//  HispitalTriageSystem
//
//  Created by Nero Zuo on 15/3/30.
//  Copyright (c) 2015年 Nero Zuo. All rights reserved.
//

#import "firstNavigationViewController.h"

@interface firstNavigationViewController ()

@end

@implementation firstNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIColor *color = [UIColor colorWithRed:117.0/255.0 green:227.0/255.0 blue:205.0/255.0 alpha:1];
    NSDictionary *dict = [NSDictionary dictionaryWithObject:color forKey:NSForegroundColorAttributeName];
    self.navigationBar.titleTextAttributes = dict;
    
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
