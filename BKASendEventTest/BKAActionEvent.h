//
//  BKAActionEvent.h
//  BKASendEventTest
//
//  Created by swamInAWarmHazeOfDusk on 10/30/13.
//  Copyright (c) 2013 BKA. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol BKAActionEvent <NSObject>

+ (SEL)actionSelector;

@end

@interface BKAActionEvent : UIEvent <BKAActionEvent>

- (void)sendFrom:(UIResponder *)sender;

@end
