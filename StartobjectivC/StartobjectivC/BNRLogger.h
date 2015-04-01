//
//  BNRLogger.h
//  StartobjectivC
//
//  Created by Chioukh Lyes on 01/04/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *incomingData;
}

@property (nonatomic) NSDate *lastTime;
- (void)zoneChange:(NSNotification *)note;
- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;

@end
