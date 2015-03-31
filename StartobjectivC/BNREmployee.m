//
//  BNREmployee.m
//  StartobjectivC
//
//  Created by Chioukh Lyes on 31/03/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

@implementation BNREmployee

- (double) yearsOfEmployment
{
    // Do i have a no nil hireDate ?
    if(self.hireDate){
        //NSTimeInterval is the same as double
        NSDate *now = [[NSDate alloc]init];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0; //seconds per year
    }else{
        return 0;
    }
}

//overriding

- (float) bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

@end
