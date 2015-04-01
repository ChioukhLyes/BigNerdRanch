//
//  BNREmployee.h
//  StartobjectivC
//
//  Created by Chioukh Lyes on 31/03/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//


/**
 * Using @class nestead import : say to compilator, dont panic it just what you must now for moment
 * compiler does not need to know a lot to process a file of declarations
 * we can use this (@class) with file.h..
 *
 **/
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson



@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSSet *assets;

- (double) yearsOfEmployment;
- (void) addAssets:(BNRAsset *)a;
- (unsigned int) valueOfAssets;


@end
