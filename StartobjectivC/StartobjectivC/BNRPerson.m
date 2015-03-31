//
//  BNRPerson.m
//  StartobjectivC
//
//  Created by Chioukh Lyes on 31/03/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson




- (float) bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}



@end
