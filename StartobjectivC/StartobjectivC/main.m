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
        // Create an array of BNREmployee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            //Create an instance of BNREmployee
            BNREmployee *mikey = [[BNREmployee alloc] init];
            
            // Give the instance variables interesting values
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.employeeID = i;
        
            //Put  employee in the employees array
            [employees addObject:mikey];
        }
        
        for (int i = 0; i < 10; i++) {
            
            BNRAsset *asset = [[BNRAsset alloc] init];
            NSString *currentLabel = [NSString stringWithFormat:@"laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            NSUInteger randomIndex = random() % [employees count];
            
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
        
            [randomEmployee addAssets:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        NSLog(@"Giving up ownership of arrays");
        
        employees = nil;

        
    }
    return 0;
}
