//
//  QuestionFactory.h
//  Maths
//
//  Created by Brian Vo on 2018-04-11.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic) NSArray *questionSubclassNames;

-(Question *) generateRandomQuestion;

@end
