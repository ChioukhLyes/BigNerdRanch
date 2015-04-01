//
//  BNRLogger.m
//  StartobjectivC
//
//  Created by Chioukh Lyes on 01/04/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//

// Protocols is like 'INTERFACESS' in java, they have @required methods to implements and @optional method

// When you send message to an object and that method is not implemented by the object => program will crash

// To avoid this situation : we used responseToTeletoc: implemented in NSObject, this method ask an object if it implements a method or not !

#import "BNRLogger.h"


@implementation BNRLogger

- (NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    self.lastTime = now;
    NSLog(@"just set time to %@", self.lastTimeString);
}

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed!");
}

#pragma mark - NSURLConnectionDataDelegate

// Called each time a chunk of data arrives
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    
    // Create a mutable data if it does not already exist
    if (!incomingData) {
        incomingData = [[NSMutableData alloc] init];
    }
    
    [incomingData appendData:data];
}

// Called when the last chunk has been processed
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:incomingData
                                             encoding:NSUTF8StringEncoding];
    incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    // Uncomment the next line to see the entire fetched file
    // NSLog(@"The whole string is %@", string);
}

#pragma mark - NSURLConnectionDelegate

// Called if the fetch fails
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    incomingData = nil;
}

@end
