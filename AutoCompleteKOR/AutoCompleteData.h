//
//  AutoCompleteData.h
//  AutoCompleteKOR
//
//  Created by an seonghyun on 13. 5. 11..
//  Copyright (c) 2013년 INDF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AutoCompleteData : NSObject
{
    NSString *word;
    NSString *wordIndex;
}

-(id) initWithWord: (NSString*)_word;

-(void)setWord:(NSString*)_word;
-(void)setWordIndex:(NSString*)_wordIndex;
-(NSString*)getWord;
-(NSString*)getWordIndex;

@end
