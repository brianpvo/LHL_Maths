//
//  main.m
//  Maths
//
//  Created by Brian Vo on 2018-04-10.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        InputHandler *inputHandle = [[InputHandler alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        while (gameOn) {
            //Question *question = [[Question alloc] init];
            Question *question = [questionFactory generateRandomQuestion];
            [question generateQuestion];
            [[questionManager questions] addObject:question];

            NSLog(@"%@", [question question]);
            
//            InputHandler *inputHandle = [[InputHandler alloc] init];
            NSString *parsedInput = [inputHandle parse];
            int inputHandlerInt = [InputHandler getIntValue:parsedInput];
            
            NSString* quit = @"quit\n";
            if ([[parsedInput lowercaseString] isEqualToString:quit]) {
                gameOn = NO;
                break;
            }
            
            if (inputHandlerInt == [question answer]) {
                NSLog(@"Right!");
                score.right++;
            }
            else {
                NSLog(@"Wrong!");
                score.wrong++;
            }
            NSLog(@"%@", [score score]);
            NSLog(@"%@",[questionManager timeOutput]);
        }
    }
    return 0;
}
