//
//  AdditionQuestion.h
//  Maths
//
//  Created by Brian Vo on 2018-04-10.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic) int rightValue;
@property (nonatomic) int leftValue;

- (NSInteger)answer;

-(NSTimeInterval) answerTime;

-(void) generateQuestion;

@end
