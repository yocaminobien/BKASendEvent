//
//  UIResponder_CustomActionsAdditions.h
//  BKASendEventTest
//
//  Created by swamInAWarmHazeOfDusk on 10/30/13.
//  Copyright (c) 2013 BKA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BKAChangeBackgroundColorEvent.h"

@class BKAChangeBackgroundColorEvent;

@interface UIResponder (CustomActionsAdditions)

- (void)bka_handleChangeBackgroundColorRequestFromSender:(id)sender withEvent:(BKAChangeBackgroundColorEvent *)event;

@end
