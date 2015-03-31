//
//  dataSocre.m
//  HispitalTriageSystem
//
//  Created by Nero Zuo on 15/3/31.
//  Copyright (c) 2015年 Nero Zuo. All rights reserved.
//


#import "dataSocre.h"

@implementation dataSocre

-(FMDatabase *)dateBase
{
    if(_dateBase==nil)
    {
        NSString *doc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
        NSString *filePath = [doc stringByAppendingPathComponent:@"bak.db"];
        //NSLog(@"%@",filePath);
        FMDatabase *db = [FMDatabase databaseWithPath:filePath];
        if ([db open]) {
            NSLog(@"Open succeed");
            _dateBase = db;
        }
        else
        {
            NSLog(@"Open fail");
        }
    }
    return _dateBase;
}

//要[string integerValue]
-(NSMutableArray *)tureNextQuestionIds
{
    if (_tureNextQuestionIds==nil) {
        _tureNextQuestionIds =[NSMutableArray arrayWithObject:@""];   //从1开始
        FMResultSet *resultSet =[self.dateBase executeQuery:@"SELECT * FROM question_tb"];
        while ([resultSet next]) {
            int trueNextId = [resultSet intForColumn:@"true_next_ques_id"];
            NSString *str = [NSString stringWithFormat:@"%d",trueNextId];
            [_tureNextQuestionIds addObject:str];
            
        }
    }
    return _tureNextQuestionIds;
}
//要[string integerValue]
-(NSMutableArray *)falseNextQuestionIds{
    if (_falseNextQuestionIds==nil) {
        _falseNextQuestionIds =[NSMutableArray arrayWithObject:@""]; //从1开始
        FMResultSet *resultSet =[self.dateBase executeQuery:@"SELECT * FROM question_tb"];
        while ([resultSet next]) {
            int falseNextId = [resultSet intForColumn:@"false_next_ques_id"];
            NSString *str = [NSString stringWithFormat:@"%d",falseNextId];
            [_falseNextQuestionIds addObject:str];
        }
    }
    return _falseNextQuestionIds;
}

-(NSMutableArray *)questionsName
{
    if (_questionsName==nil) {
        _questionsName =[NSMutableArray arrayWithObject:@""]; //从1开始
        FMResultSet *resultSet =[self.dateBase executeQuery:@"SELECT * FROM question_tb"];
        while ([resultSet next]) {
            NSString *questionName= [resultSet stringForColumn:@"question"];
            [_questionsName addObject:questionName];
        }
    }
    return _questionsName;

}


@end