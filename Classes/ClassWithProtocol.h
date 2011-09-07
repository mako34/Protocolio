//
//  ClassWithProtocol.h
//  blogScratchApp
//
//  Created by John on 4/15/10.
//  Copyright 2010 iPhoneDeveloperTips.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ProcessDataDelegate <NSObject>
@required
- (void) processSuccessful: (BOOL)success;
@end

@interface ClassWithProtocol : NSObject 
{
	id <ProcessDataDelegate> delegate;
}

@property (retain) id delegate;

-(void)startSomeProcess;

@end
