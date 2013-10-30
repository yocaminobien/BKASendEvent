//
//  BKAActionEvent.m
//  BKASendEventTest
//
//  Created by swamInAWarmHazeOfDusk on 10/30/13.
//  Copyright (c) 2013 BKA. All rights reserved.
//

#import "BKAActionEvent.h"


@implementation BKAActionEvent

+ (SEL)actionSelector
{
    NSAssert1(NO, @"You must override %@ in a subclass", NSStringFromSelector(_cmd));
    return NULL;
}

- (void)sendFrom:(UIResponder *)sender
{
    SEL actionSelector = [[self class] actionSelector];
    if (actionSelector == NULL) {
        return;
    }
    
    [self sendAction:actionSelector fromSender:sender];
}

- (void)sendAction:(SEL)selector fromSender:(UIResponder *)sender
{
    UIResponder *target = [sender nextResponder];

    while (target != nil) {
        NSLog(@"target responder %@", target);
        if ([target respondsToSelector:selector]) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            [target performSelector:selector withObject:sender withObject:self];
#pragma clang diagnostic pop
            return;
        }
        target = [target nextResponder];
    }
}

@end
