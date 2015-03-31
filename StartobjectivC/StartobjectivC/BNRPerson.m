//
//  BNRPerson.m
//  StartobjectivC
//
//  Created by Chioukh Lyes on 31/03/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson


- (float) heightInMeters
{
    return _heightInMeters;
}

- (void) setHeightInMeters:(float)h
{
    _heightInMeters = h;
}

- (int) weightInKilos
{
    return _weightInKilos;
}

- (void) setWeightInKilos:(int)w
{
    _weightInKilos = w;
}

- (float) bodyMassIndex
{
    return _weightInKilos / (_heightInMeters * _weightInKilos);
}



@end
