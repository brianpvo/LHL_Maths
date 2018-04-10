//
//  ScoreKeeper.m
//  Maths
//
//  Created by Brian Vo on 2018-04-10.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString *)score {
    
    float percentage = (_right / (_right + _wrong)) * 100;
    
    NSString *finalScore = [NSString stringWithFormat:@"score: %g right, %g wrong ---- %g%%", _right, _wrong, percentage];
    
    return finalScore;
}

@end
