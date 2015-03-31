//
//  questionSelectViewController.m
//  HispitalTriageSystem
//
//  Created by Nero Zuo on 15/4/1.
//  Copyright (c) 2015年 Nero Zuo. All rights reserved.
//

#import "questionSelectViewController.h"
#import "dataSocre.h"
@interface questionSelectViewController ()
{
    NSInteger nextTrueNextId;
    NSInteger nextFalseNextId;
    NSString *nextQuestion;
}
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
- (IBAction)selectYNDidPress:(id)sender;

@end

@implementation questionSelectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.questionLabel.text = self.question;
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

- (IBAction)selectYNDidPress:(id)sender {
    UIButton *pressedButton = (UIButton *)sender;
    dataSocre *questionData = [[dataSocre alloc] init];
    if (pressedButton.tag == 0) {   //点击确定
        nextTrueNextId = [questionData.tureNextQuestionIds[self.trueNextId] integerValue];
        nextFalseNextId = [questionData.falseNextQuestionIds[self.trueNextId] integerValue];
        nextQuestion = questionData.questionsName[self.trueNextId];
    }
    else{
        nextTrueNextId = [questionData.tureNextQuestionIds[self.falseNextId] integerValue];
        nextFalseNextId = [questionData.falseNextQuestionIds[self.falseNextId] integerValue];
        nextQuestion = questionData.questionsName[self.falseNextId];
    }
   NSLog(@"%ld %ld %@",(long)nextTrueNextId,(long)nextFalseNextId,nextQuestion);
}
@end
