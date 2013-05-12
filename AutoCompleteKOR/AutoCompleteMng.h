//
//  AutoCompleteMng.h
//  AutoCompleteKOR
//
//  Created by an seonghyun on 13. 5. 11..
//  Copyright (c) 2013년 INDF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AutoCompleteMng : NSObject
{
    NSMutableArray *acdArr; //AutoCompleteData Array.
}

-(NSMutableArray*)search:(NSString*)keyword;

@end
