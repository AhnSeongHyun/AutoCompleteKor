//
//  TestData.h
//  AutoCompleteKOR
//
//  Created by an seonghyun on 13. 5. 11..
//  Copyright (c) 2013년 INDF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestData : NSObject
{
    NSMutableArray * testDataArr; 
    
}

-(int)getCount;
-(NSString*)dataAtIndex:(NSUInteger)index;

@end
