//
//  QuestionFactory.m
//  Maths
//
//  Created by Brian Vo on 2018-04-11.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion"];
    }
    return self;
}

-(Question *) generateRandomQuestion {
    int index = arc4random_uniform(3);
    return [[NSClassFromString(_questionSubclassNames[index]) alloc] init];
}

@end
