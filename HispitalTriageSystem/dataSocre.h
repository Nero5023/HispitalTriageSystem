//
//  dataSocre.h
//  HispitalTriageSystem
//
//  Created by Nero Zuo on 15/3/31.
//  Copyright (c) 2015年 Nero Zuo. All rights reserved.
//



//封装好了获取内容

#import <Foundation/Foundation.h>
#import "FMDB.h"
@interface dataSocre : NSObject
@property(nonatomic,strong)NSMutableArray *tureNextQuestionIds;
@property(nonatomic,strong)NSMutableArray *falseNextQuestionIds;

@property(nonatomic,strong)NSMutableArray *questionsName;
@property(nonatomic,strong)FMDatabase *dateBase;
@end
