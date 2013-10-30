//
//  BKAButtonActionEvent.m
//  BKASendEventTest
//
//  Created by swamInAWarmHazeOfDusk on 10/30/13.
//  Copyright (c) 2013 BKA. All rights reserved.
//

#import "BKAChangeBackgroundColorEvent.h"
#import "UIResponder+CustomActionsAdditions.h"


@implementation BKAChangeBackgroundColorEvent

+ (SEL)actionSelector
{
    return @selector(bka_handleChangeBackgroundColorRequestFromSender:withEvent:);
}

@end
