//
//  NSStrUtils.m
//  SavingAlarmApp
//
//  Created by an seonghyun on 13. 5. 8..
//  Copyright (c) 2013년 an seonghyun. All rights reserved.
//

#import "NSStrUtils.h"

@implementation NSStrUtils
 
static unichar CHO_SUNG[] = { 0x3131, 0x3132 , 0x3134, 0x3137, 0x3138, 0x3139 , 0x3141, 0x3142 , 0x3143, 0x3145 , 0x3146, 0x3147, 0x3148, 0x3149 , 0x314a, 0x314b , 0x314c, 0x314d , 0x314e };

static  unichar JUNG_SUNG[] = { 0x314f, 0x3150 , 0x3151, 0x3152, 0x3153, 0x3154 , 0x3155, 0x3156 , 0x3157, 0x3158 , 0x3159, 0x315a, 0x315b, 0x315c ,
    0x315d, 0x315e , 0x315f, 0x3160 , 0x3161, 0x3162 , 0x3163 };

static  unichar JONG_SUNG[] = { 0x0000, 0x3131 , 0x3132, 0x3133, 0x3134, 0x3135 , 0x3136, 0x3137 , 0x3139, 0x313a , 0x313b, 0x313c, 0x313d, 0x313e ,
    0x313f, 0x3140 , 0x3141, 0x3142 , 0x3144, 0x3145 , 0x3146, 0x3147, 0x3148 , 0x314a, 0x314b , 0x314c, 0x314d , 0x314e };

+(NSString*)getJasoLetter:(NSString*)target
{
    
    int count = target.length;     
    NSMutableString *jasoLetter = [[NSMutableString alloc]init];
    for(int i=0; i<count; i++)
    {
        unichar uniTarget = [target characterAtIndex:i];
        
        if([NSStrUtils isKorean:uniTarget])
        {
            int choIdx = 0;
            int jungIdx = 0;
            int jongIdx = 0;
            
            int init_char_idx = uniTarget-0xAC00;
            
            jongIdx = (init_char_idx) %28;
            jungIdx = ((init_char_idx-jongIdx)/28)%21;
            choIdx = (((init_char_idx)/28)-jungIdx)/21;
            
            [jasoLetter appendString:[NSString stringWithFormat: @"%C", CHO_SUNG[choIdx]]];
            
            [jasoLetter appendString:[NSString stringWithFormat: @"%C", JUNG_SUNG[jungIdx]]];
            
            if(jongIdx != 0x0000)
            {
                [jasoLetter appendString:[NSString stringWithFormat: @"%C", JONG_SUNG[jongIdx]]];
            }
        }
        else
        { 
            [jasoLetter appendString:[NSString stringWithFormat: @"%C", uniTarget]];
        }
    }
    return [NSString stringWithString:jasoLetter];
}

+(BOOL)isKorean:(unichar) target
{
    BOOL isKoranLanguage = NO;
    if(0xAC00 < target && target<0xD7AF)
    {
        isKoranLanguage = YES;
    }
    return isKoranLanguage;
}
  


@end
