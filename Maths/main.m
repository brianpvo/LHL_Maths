//
//  main.m
//  Maths
//
//  Created by Brian Vo on 2018-04-10.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        while (gameOn) {
            char inputChar[255];
            AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] init];
            NSLog(@"%@", [additionQuestion question]);
            NSLog(@"%li", [additionQuestion answer]);
            
            fgets(inputChar, 255, stdin);
            
            NSString* inputString = [NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
            
            NSString* quit = @"quit\n";
            if ([[inputString lowercaseString] isEqualToString:quit]) {
                NSLog(@"Im in quit ");
                gameOn = NO;
                break;
            }
            
            if ([inputString intValue] == [additionQuestion answer]) {
                NSLog(@"Right!");
            }
            else {
                NSLog(@"Wrong!");
            }
        }
    }
    return 0;
}
