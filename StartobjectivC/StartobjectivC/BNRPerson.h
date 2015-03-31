//
//  BNRPerson.h
//  StartobjectivC
//
//  Created by Chioukh Lyes on 31/03/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

{
    //BNRPerson has two instance variables
    float _heightInMeters;
    int _weightInKilos;
}

//BNRPerson has methods to read and set its instance variables

- (float) heightInMeters;
- (void) setHeightInMeters:(float) h;
- (int) weightInKilos;
- (void) setWeightInKilos : (int) w;

//BNRPerson has a method that calculates the body Lass Index

- (float) bodyMassIndex;

@end
