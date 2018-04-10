//
//  ScoreKeeper.h
//  Maths
//
//  Created by Brian Vo on 2018-04-10.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property float right;
@property float wrong;

-(NSString *)score;

@end
