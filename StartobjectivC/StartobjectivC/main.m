//
//  main.m
//  StartobjectivC
//
//  Created by Chioukh Lyes on 30/03/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//


/**
 * Nested message : [[NSDate] timeIntervalSince1970]
 * Insted
 * *now = [NSDate date]
 * seconds [now timeIntervalSince1970]
 *
 *
 * WITH CONVENIENCE
 * we call : *now = [[NSDate alloc] init], no diff with "date"
 **/
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *now = [NSDate date]; //sending message to NSDate to execute "date" methode
        
        /**
         * The NSDate is receiver
         * The selector is 'date'
         * Message  = date
         * date is a class method
         **/
        
        
        
        /**
         * timeIntervalSince1970 is an instace method
         *
         **/
        
        /**
         * Impossible to sent timeIntervalSince1970 to NSDate, or date to an instance.
         *
         */
        double seconds = [now timeIntervalSince1970];
        NSLog(@"date %f\n",seconds);
        
        /*Errors*/
        //        NSDate *testnow = [now date];
        //        double seconds = [NSDate timeIntervalSince1970];
        //        NSLog(@"date %f\n",seconds);
        //        testnow = [now timeintervalsince1970];
        
        NSLog(@"date %p\n",now);
        NSLog(@"date %@\n",now);
        NSLog(@"date %f\n",seconds);
        NSLog(@"Hello, World!");
        
        //Challenge Chap 13
        NSHost *host = [NSHost currentHost];
        
        NSString *name = [host localizedName];
        NSLog(@"Name is : %@\n",name);
        
        //Challenge chap 14
        NSDate *laterDate = [[NSDate alloc] init];
        NSDate *earlierDate = [[NSDate alloc] init];
        double seconde = [laterDate timeIntervalSinceDate:earlierDate];
        
        NSCalendar *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDateComponents *comp = [[NSDateComponents alloc] init];
        [comp setYear:1989];
        [comp setMonth:9];
        [comp setDay:28];
        [comp setHour:14];
        [comp setMinute:10];
        [comp setSecond:0];
        
        NSDate *datebirth = [cal dateFromComponents:comp];
        
        NSLog(@"Date of birth %@", datebirth);
        
        
        
    }
    return 0;
}
