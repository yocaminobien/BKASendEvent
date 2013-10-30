//
//  BKAChangeBackgroundColorEventButton.m
//  BKASendEventTest
//
//  Created by swamInAWarmHazeOfDusk on 10/30/13.
//  Copyright (c) 2013 BKA. All rights reserved.
//

#import "BKAChangeBackgroundColorEventButton.h"
#import "BKAChangeBackgroundColorEvent.h"


@implementation BKAChangeBackgroundColorEventButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];
    if (highlighted) {
        BKAChangeBackgroundColorEvent *event = [BKAChangeBackgroundColorEvent new];
        [event sendFrom:self];
    }

}


@end
