//
//  acheLocationViewController.m
//  HispitalTriageSystem
//
//  Created by Nero Zuo on 15/3/30.
//  Copyright (c) 2015年 Nero Zuo. All rights reserved.
//

#import "acheLocationViewController.h"
#import "FMDB.h"
#import "dataSocre.h"
#import "questionSelectViewController.h"

@interface acheLocationViewController ()
{
    NSInteger trueNextId;
    NSInteger falseNextId;
    NSString *question;
}
- (IBAction)painLocation:(id)sender;


@end

@implementation acheLocationViewController

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"painLocationToQues"]) {
        questionSelectViewController *controller = (questionSelectViewController *)segue.destinationViewController;
        controller.question =question;
        controller.trueNextId = trueNextId;
        controller.falseNextId = falseNextId;
    }
}

- (IBAction)painLocation:(id)sender {
    UIButton *pressedButton = (UIButton *)sender;
    dataSocre *questionData = [[dataSocre alloc] init];
    
    
    switch (pressedButton.tag) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
            trueNextId = [questionData.tureNextQuestionIds[1] integerValue];
            falseNextId = [questionData.falseNextQuestionIds[1] integerValue];
            question = questionData.questionsName[1];
            break;
        case 8:
        case 9:
            trueNextId = [questionData.tureNextQuestionIds[154] integerValue];
            falseNextId = [questionData.falseNextQuestionIds[154] integerValue];
            question = questionData.questionsName[154];
      
    }
    NSLog(@"%ld %ld %@",(long)trueNextId,(long)falseNextId,question);
    [self performSegueWithIdentifier:@"painLocationToQues" sender:sender];
    
}
@end
