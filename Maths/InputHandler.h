//
//  InputHandler.h
//  Maths
//
//  Created by Brian Vo on 2018-04-10.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

-(NSString *)parse;

+(int)getIntValue:(NSString *) string;

@end
