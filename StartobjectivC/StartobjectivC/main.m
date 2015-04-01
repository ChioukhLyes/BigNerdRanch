//
//  main.m
//  StartobjectivC
//
//  Created by Chioukh Lyes on 30/03/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//
// in import : we use <> for precompiling headers, "" for say to compiler to see inside current project

#import <Foundation/Foundation.h>
#import "../BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create
        
        NSLog(@"\u03c0 is %f", M_PI);
        
        NSMutableString *str = [[NSMutableString alloc] init];
        NSError *erro;
        
        for (int i=0; i<10; i++) {
            [str appendString:@"Lyes is cool! \n"];
        }
        
        BOOL success = [str writeToFile:@"/Users/chioukhlyes/Desktop/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:NULL];
        
        
        if(success){
            NSLog(@"done writing /Users/chioukhlyes/Desktop/cool.txt");
        } else {
            NSLog(@"writing /Users/chioukhlyes/Desktop/cool.txt failed : %@", [erro localizedDescription]);
        }
        
    }
    
    
    NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSError *error = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:request
                                         returningResponse:NULL
                                                     error:&error];
    if (!data) {
        NSLog(@"fetch failed: %@", [error localizedDescription]);
        return 1;
    }
    
    NSLog(@"The file is %lu bytes", (unsigned long)[data length]);
    
    BOOL written = [data writeToFile:@"/tmp/google.png"
                             options:NSDataWritingAtomic
                               error:&error];
    
    if (!written) {
        NSLog(@"write failed: %@", [error localizedDescription]);
        return 1;
    }
    
    NSLog(@"Success!");
    
    NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
    NSLog(@"The file read from the disk has %lu bytes", (unsigned long)[readData length]);

        
    
 
    return 0;
}
