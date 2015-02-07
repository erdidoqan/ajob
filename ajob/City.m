//
//  City.m
//  ajob
//
//  Created by Erdi Dogan on 7.02.2015.
//  Copyright (c) 2015 Erdi Dogan. All rights reserved.
//

#import "City.h"

@implementation City

@synthesize com_name,ads_name,job_desc;

-(id)initWithComName: (NSString *)ComName andAdsName: (NSString *)AdsName andJobDesc: (NSString *)JobDesc;
{
    self  = [super init];
    if (self)
    {
        com_name = ComName;
        ads_name = AdsName;
        job_desc = JobDesc;
        
    }
    
    return self;
}

@end
