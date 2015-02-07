//
//  City.h
//  ajob
//
//  Created by Erdi Dogan on 7.02.2015.
//  Copyright (c) 2015 Erdi Dogan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (strong, nonatomic) NSString * com_name;
@property (strong, nonatomic) NSString * ads_name;
@property (strong, nonatomic) NSString * job_desc;

-(id)initWithComName: (NSString *)ComName andAdsName: (NSString *)AdsName andJobDesc: (NSString *)JobDesc;


@end
