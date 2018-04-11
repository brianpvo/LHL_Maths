//
//  AdditionQuestion.m
//  Maths
//
//  Created by Brian Vo on 2018-04-10.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightValue = arc4random_uniform(91) + 10;
        _leftValue = arc4random_uniform(91) + 10;
        _question = @"";
        _answer = _rightValue + _leftValue;
        _startTime = [NSDate date];
    }
    return self;
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval) answerTime {
    return [_endTime timeIntervalSinceDate:_startTime];
}

-(void) generateQuestion {
    
}

@end
