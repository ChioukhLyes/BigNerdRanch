//
//  BNRPerson.h
//  StartobjectivC
//
//  Created by Chioukh Lyes on 31/03/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

//BNPerson has two properties
// property (atomic) (nonatomic) fot multithreading (y)

// we can have : (nonatomic, readonly) (nonatomic, readwrite)
// readwrite is default value.

@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;



//BNRPerson has a method that calculates the body Lass Index

- (float) bodyMassIndex;

@end
