//
//  CitiesTableViewController.h
//  ajob
//
//  Created by Erdi Dogan on 7.02.2015.
//  Copyright (c) 2015 Erdi Dogan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CitiesTableViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray * jsonArray;
@property (nonatomic, strong) NSMutableArray * citiesArray;

#pragma mark -
#pragma mark Class Methods
- (void) retrieveData;

@end
