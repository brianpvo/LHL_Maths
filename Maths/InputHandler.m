//
//  InputHandler.m
//  Maths
//
//  Created by Brian Vo on 2018-04-10.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (instancetype)init
{
    self = [super init];
    if (self) {
        _count = 1;
    }
    return self;
}


-(NSString *)parse {
    char inputChar[255];
    if (_count == 1) {
        fgets(inputChar, 255, stdin);
        _count++;
    }
    
    NSString* inputString = [NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding];
    
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    return inputString;
}

@end
