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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //instance
        BNREmployee *mikey = [[BNREmployee alloc] init];
        
        //giv variables instance values
        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        
        
        //log instance variables using the getters
        float height = mikey.heightInMeters;
        int weight  =  mikey.weightInKilos;
        
        NSLog(@"mikey is %.2f meters and weights %d kg", height, weight);
        NSLog(@"Employee %d hired on %@", mikey.employeeID, mikey.hireDate);
        
        
        //log values using cutom methods
        float bmi = [mikey bodyMassIndex];
        double years = [mikey yearsOfEmployment];
        
        NSLog(@"BMI of %.2f, has worked with us for %.f years",bmi, years);
        
    }
    return 0;
}
