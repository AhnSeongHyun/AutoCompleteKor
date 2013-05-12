//
//  NSStrUtils.h
//  SavingAlarmApp
//
//  Created by an seonghyun on 13. 5. 8..
//  Copyright (c) 2013년 an seonghyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSStrUtils : NSObject

+(NSString*)getJasoLetter:(NSString*)target;
+(BOOL)isKorean:(unichar) target; 

@end
