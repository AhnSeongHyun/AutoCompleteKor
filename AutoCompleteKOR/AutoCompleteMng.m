//
//  AutoCompleteMng.m
//  AutoCompleteKOR
//
//  Created by an seonghyun on 13. 5. 11..
//  Copyright (c) 2013년 INDF. All rights reserved.
//

#import "AutoCompleteMng.h"
#import "TestData.h"
#import "AutoCompleteData.h"
#import "NSStrUtils.h"

@implementation AutoCompleteMng

-(id)init
{
    if (self = [super init] )
    {
        
        acdArr = [[NSMutableArray alloc]init];
        TestData *test = [[TestData alloc]init];
        int count = [test getCount];
        
        for(int i =0; i<count; i++)
        {
            [acdArr addObject:[[AutoCompleteData alloc] initWithWord:[test dataAtIndex:i]]];
        }
        
        //ASC Sorting
        
        NSSortDescriptor *qntdiffSorter = [[NSSortDescriptor alloc] initWithKey:@"wordIndex" ascending:YES];
        [acdArr sortUsingDescriptors: [ NSArray arrayWithObject: qntdiffSorter ]];
        
    }
    return self;
}

-(NSMutableArray*)search:(NSString*)keyword
{
    
    NSMutableArray *searchedStrArr = [[NSMutableArray alloc]init];
    
    
    NSString * keywordLetter = [NSStrUtils getJasoLetter:keyword];
    int keywordLen = keywordLetter.length;
    
    const int FIND = 0;
    
    int start, end, midPt;
    start = 0;
    end = acdArr.count - 1;
    
    int result = -1;
    
    while (start <= end)
    {
        midPt = (start + end) / 2;
        
        NSString * wordIndex = [[acdArr objectAtIndex:midPt] getWordIndex];
         
        
        if(keywordLen < wordIndex.length) 
            result = [[wordIndex substringToIndex:keywordLen] caseInsensitiveCompare:keywordLetter];  
        else
            result = [wordIndex caseInsensitiveCompare:keywordLetter];
        
        if (result == NSOrderedSame)
        { 
            [searchedStrArr addObject:[[acdArr objectAtIndex:midPt] getWord]];
            
            if (midPt > 0)
            {// Search upward
                
                int submid = midPt;
                submid--;
                
                for (;;)
                {
                    if (submid < 0)
                        break;
                    
                    wordIndex = [[acdArr objectAtIndex:submid] getWordIndex];
                    
                    if(keywordLen < wordIndex.length)
                    {
                        result = [[wordIndex substringToIndex:keywordLen] caseInsensitiveCompare:keywordLetter];

                    
                    }
                    else
                        result = [wordIndex caseInsensitiveCompare:keywordLetter];
                    
                    if (result == NSOrderedSame)
                    { 
                      
                        [searchedStrArr addObject:[[acdArr objectAtIndex:submid] getWord]];
                        submid--;
                    }
                    else 
                        break;// for break 
                }
                
            }
            
            if (midPt < acdArr.count)
            {// Search downward
                
                int submid = midPt;
                submid++;
                
                for (;;)
                {
                    if (submid >= acdArr.count)
                        break;// for break
                    
                    wordIndex = [[acdArr objectAtIndex:submid] getWordIndex];

                    
                    if(keywordLen < wordIndex.length)
                        result = [[wordIndex substringToIndex:keywordLen] caseInsensitiveCompare:keywordLetter];
                    else
                        result = [wordIndex caseInsensitiveCompare:keywordLetter];
                    
                    if (result == NSOrderedSame)
                    {
                        [searchedStrArr addObject:[[acdArr objectAtIndex:submid] getWord]];
                        submid++;
                    }
                    else 
                        break; // for break
                }
            }
            
            break;
            
        }
        else if (result < FIND)
        {
            start = midPt + 1;
        }
        else
        {
            end = midPt - 1;
        }
    }
    
    return searchedStrArr; 
    
}



@end
