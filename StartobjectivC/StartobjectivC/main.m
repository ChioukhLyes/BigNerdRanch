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
        
        NSMutableDictionary *executives = [[NSMutableDictionary alloc]init];
        
        for (int i = 0; i < 10; i++) {
            //Create an instance of BNREmployee
            BNREmployee *mikey = [[BNREmployee alloc] init];
            
            // Give the instance variables interesting values
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.employeeID = i;
        
            //Put  employee in the employees array
            [employees addObject:mikey];
            
            //Is this the first employee ?
            if(i==0){
                [executives setObject:mikey forKey:@"CEO"];
            }
            
            //Is this the second employee ?
            if(i==1){
                [executives setObject:mikey forKey:@"CTO"];
            }
            
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            
            BNRAsset *asset = [[BNRAsset alloc] init];
            NSString *currentLabel = [NSString stringWithFormat:@"laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            NSUInteger randomIndex = random() % [employees count];
            
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
        
            [randomEmployee addAssets:asset];
            
            // Assign the asset to the employee
            [randomEmployee addAssets:asset];
        }
        
        //Sorting
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets"
                                                              ascending:YES];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID"
                                                              ascending:YES];
        [employees sortUsingDescriptors:@[voa, eid]];

        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        NSLog(@"Giving up ownership of arrays");
        
        NSLog(@"executive: %@", executives);
        // Print out the CEO's information
        NSLog(@"CEO: %@", executives[@"CEO"]);
        executives = nil;
        
        
        //Filtring
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        employees = nil;

        
    }
    sleep(100);
    return 0;
}
