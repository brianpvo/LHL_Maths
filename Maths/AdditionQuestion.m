//
//  AdditionQuestion.m
//  Maths
//
//  Created by Brian Vo on 2018-04-10.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        int randomNum = arc4random_uniform(91) + 10;
        int randomNum2 = arc4random_uniform(91) + 10;
        _question = [NSString stringWithFormat:@"%i + %i ?", randomNum, randomNum2];
        _answer = randomNum + randomNum2;
    }
    return self;
}

@end
