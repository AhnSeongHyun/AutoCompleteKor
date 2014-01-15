//
//  AutoCompleteData.m
//  AutoCompleteKOR
//
//  Created by an seonghyun on 13. 5. 11..
//  Copyright (c) 2013년 INDF. All rights reserved.
//

#import "AutoCompleteData.h"
#import "NSStrUtils.h"

@implementation AutoCompleteData
-(id)init
{
    self = [super init];
    if (self)
    {
          
    }
    return self;
}

-(id) initWithWord: (NSString*)_word
{
    if (self = [super init])
    {
        word = _word;
        wordIndex = [NSStrUtils getJasoLetter:word];
    }
    
    return self;
}

-(void)setWord:(NSString*)_word
{
    word = _word;
}

-(void)setWordIndex:(NSString*)_wordIndex
{
    wordIndex = _wordIndex; 
}

-(NSString*)getWord
{
    return word;
}

-(NSString*)getWordIndex
{
    return wordIndex;
}

@end
