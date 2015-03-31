//
//  main.m
//  StartobjectivC
//
//  Created by Chioukh Lyes on 30/03/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//
// in import : we use <> for precompiling headers, "" for say to compiler to see inside current project

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
#include <readline/readline.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //instance
        BNRPerson *mikey = [[BNRPerson alloc] init];
        
        //giv variables instance values
        [mikey setWeightInKilos:96];
        [mikey setHeightInMeters:1.8];
        
        //log instance variables using the getters
        float height = [mikey heightInMeters];
        int weight  = [mikey weightInKilos];
        
        NSLog(@"mikey is %.2f meters and weights %d kg", height, weight);
        
        
        //log values using cutom methods
        float bmi = [mikey bodyMassIndex];
        NSLog(@"mikey had BMI of %f",bmi);
        
    }
    return 0;
}
