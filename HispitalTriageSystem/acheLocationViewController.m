//
//  acheLocationViewController.m
//  HispitalTriageSystem
//
//  Created by Nero Zuo on 15/3/30.
//  Copyright (c) 2015年 Nero Zuo. All rights reserved.
//

#import "acheLocationViewController.h"
#import "FMDB.h"
@interface acheLocationViewController ()
@property(nonatomic,strong) FMDatabase *db;

@end

@implementation acheLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    NSString *doc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *filePath = [doc stringByAppendingPathComponent:@"bak.db"];
    //NSLog(@"%@",filePath);
    FMDatabase *db = [FMDatabase databaseWithPath:filePath];
    if ([db open]) {
        NSLog(@"Open succeed");
        self.db = db;
    }
    else
    {
        NSLog(@"Open fail");
    }
    

}
-(void)query
{

    FMResultSet *resultSet =[self.db executeQuery:@"SELECT * FROM question_tb"];
    NSMutableArray *true_next_ques_id;
    NSMutableArray *false_next_ques_id;
    NSMutableArray *quetions;
    while ([resultSet next]) {
        NSInteger trueId = (NSInteger)[resultSet intForColumn:@"true_next_ques_id"];
        NSInteger falseId = (NSInteger)[resultSet intForColumn:@"false_next_ques_id"];
        NSString *ques = [resultSet stringForColumn:@"question"];
        [quetions addObject:ques];
    }
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
