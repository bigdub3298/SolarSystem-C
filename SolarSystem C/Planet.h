//
//  Planet.h
//  SolarSystem C
//
//  Created by Wesley Austin on 9/28/16.
//  Copyright © 2016 Wesley Austin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Planet : NSObject

- (instancetype)initWithName: (NSString *)name diameter:(NSInteger)diameter dayLength:(float)daylength millionKMsFromSun:(float)millionKMsFromSun;

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) NSString *imageName;
@property(nonatomic, readonly) NSInteger diameter;
@property(nonatomic, readonly) float dayLength;
@property(nonatomic, readonly) float millionKMsFromSun;


@end
