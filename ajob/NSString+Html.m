//
//  NSString+Html.m
//  ajob
//
//  Created by Erdi Dogan on 8.02.2015.
//  Copyright (c) 2015 Erdi Dogan. All rights reserved.
//

#import "NSString+HTML.h"

@implementation NSString (HTML)

-(NSString *) stringByStrippingHTML
{
    NSRange r;
    NSString *s = [self copy];
    while ((r = [s rangeOfString:@"<[^>]+>" options:NSRegularExpressionSearch]).location != NSNotFound)
        s = [s stringByReplacingCharactersInRange:r withString:@""];
    return s;
}

@end
