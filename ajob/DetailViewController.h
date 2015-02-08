//
//  DetailViewController.h
//  ajob
//
//  Created by Erdi Dogan on 7.02.2015.
//  Copyright (c) 2015 Erdi Dogan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface DetailViewController : UIViewController


@property (nonatomic, strong) IBOutlet UILabel * AdsNameLabel;
@property (nonatomic, strong) IBOutlet UILabel * ComNameLabel;
@property (nonatomic, strong) IBOutlet UITextView * JobDescLabel;
@property (nonatomic, strong) IBOutlet UITextView * QuaLabel;
@property (nonatomic, strong) IBOutlet UIImageView * LogoLabel;

@property(nonatomic, strong) City * currentCity;

#pragma mark -
#pragma mark Methods

-(void)getCity:(id)cityObject;
-(void)setLabels;

@end
