//
//  BNREmployee.m
//  StartobjectivC
//
//  Created by Chioukh Lyes on 31/03/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//

// whene we declare property here : only instace can get access to it, if object non-instance of BNREmployee cant not access : compiler error : not visible @interface...

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

@interface  BNREmployee ()
{
  NSMutableArray *_assets;
}

@property (nonatomic) unsigned int officeAlarmeCode;

@end

@implementation BNREmployee

//Accessor for assets properties

- (void) setAssets:(NSArray *)a{
    _assets = [a mutableCopy];
}

- (NSArray *) assets{
    return [_assets copy];
}

- (void) addAssets:(BNRAsset *)a
{
    if(!_assets){
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}

- (unsigned int)valueOfAssets
{
    unsigned int sum = 0;
    
    for(BNRAsset *a in _assets){
        sum += [a resaleValue];
    }
    return sum;
}


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

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>",self.employeeID, self.valueOfAssets];
}

@end
