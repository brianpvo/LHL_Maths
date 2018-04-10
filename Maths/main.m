//
//  main.m
//  Maths
//
//  Created by Brian Vo on 2018-04-10.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        
        while (gameOn) {
            AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] init];
            NSLog(@"%@", [additionQuestion question]);
            
            InputHandler *inputHandle = [[InputHandler alloc] init];
            NSString *parsedInput = [inputHandle parse];
            int inputHandlerInt = [InputHandler getIntValue:parsedInput];
            
            NSString* quit = @"quit\n";
            if ([[parsedInput lowercaseString] isEqualToString:quit]) {
                gameOn = NO;
                break;
            }
            
            if (inputHandlerInt == [additionQuestion answer]) {
                NSLog(@"Right!");
                NSLog(@"%i", inputHandlerInt);
                score.right++;
            }
            else {
                NSLog(@"Wrong!");
                NSLog(@"%i", inputHandlerInt);
                score.wrong++;
            }
        }
        NSLog(@"%@", [score score]);
    }
    return 0;
}
