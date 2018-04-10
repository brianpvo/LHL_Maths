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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        while (gameOn) {
            AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] init];
            NSLog(@"%@", [additionQuestion question]);
            
            InputHandler *inputHandle = [[InputHandler alloc] init];
            
            NSString* quit = @"quit\n";
            if ([[[inputHandle parse] lowercaseString] isEqualToString:quit]) {
                gameOn = NO;
                break;
            }
            
            if ([[inputHandle parse] intValue] == [additionQuestion answer]) {
                NSLog(@"Right!");
            }
            else {
                NSLog(@"Wrong!");
            }
        }
    }
    return 0;
}
