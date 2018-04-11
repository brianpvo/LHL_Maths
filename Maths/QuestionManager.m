//
//  QuestionManager.m
//  Maths
//
//  Created by Brian Vo on 2018-04-11.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSString *) timeOutput {
    double totalTime = 0;
    double avgTime = 0;
    for (Question *q in _questions) {
        totalTime += [q answerTime];
    }
    avgTime = totalTime / [_questions count];
    
    return [NSString stringWithFormat: @"total time: %gs, average time: %gs", totalTime, avgTime];
}

@end
