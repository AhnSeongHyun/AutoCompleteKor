//
//  TestData.m
//  AutoCompleteKOR
//
//  Created by an seonghyun on 13. 5. 11..
//  Copyright (c) 2013년 INDF. All rights reserved.
//

#import "TestData.h"

@implementation TestData

-(id)init
{
    if (self = [super init] )
    {
        testDataArr = [[NSMutableArray alloc] init];
        [testDataArr addObject:@"HSBC"];
        [testDataArr addObject:@"SC제일은행"];
        [testDataArr addObject:@"경남은행"];
        [testDataArr addObject:@"광주은행"];
        [testDataArr addObject:@"국민은행"];
        [testDataArr addObject:@"기업은행"];
        [testDataArr addObject:@"농협"];
        [testDataArr addObject:@"대구은행"];
        [testDataArr addObject:@"부산은행"];
        [testDataArr addObject:@"산업은행"];
        [testDataArr addObject:@"상호저축은행"];
        [testDataArr addObject:@"새마을금고"];
        [testDataArr addObject:@"수협"];
        [testDataArr addObject:@"스탠다드차타드"];
        [testDataArr addObject:@"신한은행"];
        [testDataArr addObject:@"신협"];
        [testDataArr addObject:@"씨티은행"];
        [testDataArr addObject:@"외환은행"];
        [testDataArr addObject:@"우리은행"];
        [testDataArr addObject:@"우체국"];
        [testDataArr addObject:@"전북은행"];
        [testDataArr addObject:@"제주은행"];
        [testDataArr addObject:@"하나은행"];
        
    }
    return self;
}


-(int)getCount
{
    return [testDataArr count];
    
}
-(NSString*)dataAtIndex:(NSUInteger)index
{
    return [testDataArr objectAtIndex:index];
    
}

@end
