//
//  DetailViewController.m
//  ajob
//
//  Created by Erdi Dogan on 7.02.2015.
//  Copyright (c) 2015 Erdi Dogan. All rights reserved.
//

#import "DetailViewController.h"
#import "NSString+HTML.h"
#import "HTMLEntityDecode.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize AdsNameLabel,ComNameLabel,JobDescLabel,currentCity,QuaLabel,LogoLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //load up the ui
    [self setLabels];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)getCity:(id)cityObject;
{
    currentCity = cityObject;
}

-(void)setLabels
{
    AdsNameLabel.text = currentCity.ads_name;
    ComNameLabel.text = currentCity.com_name;
    JobDescLabel.text = [HTMLEntityDecode htmlEntityDecode:[currentCity.job_desc stringByStrippingHTML]];
    QuaLabel.text = [HTMLEntityDecode htmlEntityDecode:[currentCity.qua stringByStrippingHTML]];
    
    NSString *InsLink = @"http://institutional.njepuneere.com/";
    NSString *LogoLink = [InsLink stringByAppendingString:currentCity.logo];
    LogoLabel.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[LogoLink stringByStrippingLOGO]]]];
}



@end
