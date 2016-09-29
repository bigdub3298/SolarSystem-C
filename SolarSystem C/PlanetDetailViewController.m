//
//  PlanetDetailViewController.m
//  SolarSystem C
//
//  Created by Wesley Austin on 9/28/16.
//  Copyright © 2016 Wesley Austin. All rights reserved.
//

#import "PlanetDetailViewController.h"
#import "Planet.h"

@interface PlanetDetailViewController ()

@property (nonatomic, weak) IBOutlet UIImageView *planetImageView;
@property (nonatomic, weak) IBOutlet UILabel *diameterLabel;
@property (nonatomic, weak) IBOutlet UILabel *distanceLabel;
@property (nonatomic, weak) IBOutlet UILabel *lengthOfDay;
@property (nonatomic, weak) IBOutlet UINavigationItem *planetNavigationItem;

@end

@implementation PlanetDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateWithPlanet:self.planet];
}

- (void) updateWithPlanet: (Planet *)planet
{
    self.planetNavigationItem.title = planet.name;
    self.planetImageView.image = [UIImage imageNamed:planet.imageName];
    self.diameterLabel.text = [NSString stringWithFormat:@"%@", @(planet.diameter)];
    self.distanceLabel.text = [NSString stringWithFormat:@"%@ 10^6km", @(planet.millionKMsFromSun)];
    self.lengthOfDay.text = [NSString stringWithFormat:@"%@ hr", @(planet.dayLength)];
}
@end
