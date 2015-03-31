//
//  BNRAsset.m
//  StartobjectivC
//
//  Created by Chioukh Lyes on 31/03/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset


- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

- (NSString *)description
{
    if(self.holder){
        return [NSString stringWithFormat:@"<%@: $%u, assigned to %@>", self.label, self.resaleValue, self.holder];
    }else {
        return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
    }
}

@end
