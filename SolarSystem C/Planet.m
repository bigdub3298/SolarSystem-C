//
//  Planet.m
//  SolarSystem C
//
//  Created by Wesley Austin on 9/28/16.
//  Copyright © 2016 Wesley Austin. All rights reserved.
//

#import "Planet.h"

@implementation Planet

- (instancetype)initWithName:(NSString *)name diameter:(NSInteger)diameter dayLength:(float)daylength millionKMsFromSun:(float)millionKMsFromSun
{
    self = [super init];
    if (self) {
        _name = [name copy];
        _imageName = [name lowercaseString];
        _diameter = diameter;
        _dayLength = daylength;
        _millionKMsFromSun = millionKMsFromSun;
    }
    return self;
}


@end
