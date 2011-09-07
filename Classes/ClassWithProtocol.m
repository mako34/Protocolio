//
//  ClassWithProtocol.m
//  blogScratchApp
//
//  Created by John on 4/15/10.
//  Copyright 2010 iPhoneDeveloperTips.com. All rights reserved.
//

#import "ClassWithProtocol.h"

@implementation ClassWithProtocol

@synthesize delegate;

- (void)processComplete
{
	[[self delegate] processSuccessful:YES];
}

-(void)startSomeProcess
{
	[NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(processComplete) userInfo:nil repeats:YES];
}

@end
