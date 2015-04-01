//
//  main.m
//  StartobjectivC
//
//  Created by Chioukh Lyes on 30/03/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//

// 4 forms in Objective-C to take an Calback
// Target Action, Helpers Object, Notifications, Blocks

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        
        //dictionnary
        NSMutableDictionary *stock = [NSMutableDictionary dictionary];
        stock[@"symbol"] = @"AAPL";
        stock[@"shares"] = @200;
        stock[@"Data"] = [@"Data" dataUsingEncoding:NSUTF8StringEncoding];
        stock[@"Date"] = [NSDate date];
        stock[@"Value"] = @15;
        stock[@"Cool"] = @NO;
        
        [stocks addObject:stock];
        
        //array
        NSMutableArray *stock1 = [NSMutableArray array];
        NSString *bread = @("Load of bread");
        NSString *milk = @("Container of milk");
        [stock1 addObject:bread];
        [stock1 addObject:milk];
        [stocks addObject:stock1];
        
        //string
        NSString *bread1 = @("Load of bread string");
        [stocks addObject:bread1];
        
        //data
        NSMutableData *stock2 = [NSMutableData dataWithContentsOfFile:@"/tmp/google.png"];
        [stocks addObject:stock2];
        
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
        
    }
    return 0;
}
