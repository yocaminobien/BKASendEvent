//
//  BKAViewController.m
//  BKASendEventTest
//
//  Created by swamInAWarmHazeOfDusk on 10/30/13.
//  Copyright (c) 2013 BKA. All rights reserved.
//

#import "BKAViewController.h"
#import "UIResponder+CustomActionsAdditions.h"

@interface BKAViewController ()

@end


@implementation BKAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)bka_handleChangeBackgroundColorRequestFromSender:(id)sender withEvent:(BKAChangeBackgroundColorEvent *)event
{
    self.view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
