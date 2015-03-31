//
//  main.m
//  StartobjectivC
//
//  Created by Chioukh Lyes on 30/03/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//


// NSMutableArray is subclass of NSArray / we cans use add, remove ...
#import <Foundation/Foundation.h>
#include <readline/readline.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //NDSate objects
        NSDate *now = [[NSDate alloc] init]; //sending message to NSDate to execute "date" methode
        NSDate *tomorrow = [now  dateByAddingTimeInterval:24.0*60.0*60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0*60.0*60.0];
        
        //        NSLog(@"%@ is cool!\n", name);
        
        //Array wich contains all NSDates
        NSArray *datelist = @[now, tomorrow, yesterday];
        
        //without for
        NSLog(@"List of days %@", datelist);
        NSLog(@"F-irst %@", datelist[0]);
        NSLog(@"Table date size %lu", [datelist count]);
        
        //with for / enumeration
        
        for (NSDate *date in datelist){
            NSLog(@"Elemenet : %@", date);
        }
        
        //Challenge 17-1
        NSMutableArray *datelist1 = [[NSMutableArray alloc] init];
        NSString *bread = @("Load of bread");
        NSString *milk = @("Container of milk");
        NSString *butter = @("Strick of butter");
        
        [datelist1 addObject:bread];
        [datelist1 addObject:milk];
        [datelist1 addObject:butter];
        
        for (NSDate *date in datelist1){
            NSLog(@"Elemenet : %@", date);
        }
        
        
        //Challenge 17-2
        
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        
        NSString *propernameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSArray *propernames = [propernameString componentsSeparatedByString:@"\n"];
        
        for(NSString *n in names){
            
            for(NSString *n1 in propernames){
                
                
                NSRange r1 = [n1 rangeOfString:n options:NSCaseInsensitiveSearch];
                
                if(r1.location != NSNotFound){
                    NSLog(@"%@", n);
                }
            }
        }
        
    }
    return 0;
}
