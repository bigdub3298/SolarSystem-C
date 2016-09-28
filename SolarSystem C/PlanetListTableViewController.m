//
//  PlanetListTableViewController.m
//  SolarSystem C
//
//  Created by Wesley Austin on 9/28/16.
//  Copyright © 2016 Wesley Austin. All rights reserved.
//

#import "PlanetListTableViewController.h"
#import "PlanetController.h"
#import "Planet.h"

@interface PlanetListTableViewController ()

@end

@implementation PlanetListTableViewController

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[PlanetController planets] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"planetCell" forIndexPath:indexPath];
    
    Planet *planet = [PlanetController planets][indexPath.row];
    
    cell.textLabel.text = planet.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Planet %@", @(indexPath.row + 1)];
    cell.imageView.contentMode = UIViewContentModeScaleAspectFill;
    cell.imageView.image = [UIImage imageNamed:planet.imageName]; 
    
    return cell;
}


@end
