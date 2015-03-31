//
//  questionSelectViewController.h
//  HispitalTriageSystem
//
//  Created by Nero Zuo on 15/4/1.
//  Copyright (c) 2015年 Nero Zuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface questionSelectViewController : UIViewController
@property(nonatomic) NSInteger trueNextId;
@property(nonatomic) NSInteger falseNextId;
@property(nonatomic,strong) NSString *question;
@end
