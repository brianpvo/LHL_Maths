//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Brian Vo on 2018-04-11.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    [super setQuestion:[NSString stringWithFormat:@"%i * %i ?", [super rightValue], [super leftValue]]];
    [super setAnswer:[super rightValue] * [super leftValue]];
}

@end
