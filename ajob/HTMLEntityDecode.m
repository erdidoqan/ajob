//
//  HTMLEntityDecode.m
//  ajob
//
//  Created by Erdi Dogan on 8.02.2015.
//  Copyright (c) 2015 Erdi Dogan. All rights reserved.
//

#import "HTMLEntityDecode.h"

@implementation HTMLEntityDecode : NSObject
+(NSString *)htmlEntityDecode:(NSString *)string
{
    string = [string stringByReplacingOccurrencesOfString:@"&quot;" withString:@"\""];
    string = [string stringByReplacingOccurrencesOfString:@"&apos;" withString:@"'"];
    string = [string stringByReplacingOccurrencesOfString:@"&amp;" withString:@"&"];
    string = [string stringByReplacingOccurrencesOfString:@"&lt;" withString:@"<"];
    string = [string stringByReplacingOccurrencesOfString:@"&gt;" withString:@">"];
    string = [string stringByReplacingOccurrencesOfString:@"&nbsp;" withString:@" "];
    string = [string stringByReplacingOccurrencesOfString:@"&euml;" withString:@"ë"];
    string = [string stringByReplacingOccurrencesOfString:@"&Euml;" withString:@"Ë"];
    string = [string stringByReplacingOccurrencesOfString:@"&Ccedil;" withString:@"Ç"];
    string = [string stringByReplacingOccurrencesOfString:@"&ccedil;" withString:@"ç"];
    string = [string stringByReplacingOccurrencesOfString:@"&Uuml;" withString:@"Ü"];
    string = [string stringByReplacingOccurrencesOfString:@"&uuml;" withString:@"ü"];
    string = [string stringByReplacingOccurrencesOfString:@"&Ouml;" withString:@"Ö"];
    string = [string stringByReplacingOccurrencesOfString:@"&ouml;" withString:@"ö"];
    string = [string stringByReplacingOccurrencesOfString:@"&rarr;" withString:@"→"];
    string = [string stringByReplacingOccurrencesOfString:@"&larr;" withString:@"←"];
    string = [string stringByReplacingOccurrencesOfString:@"&darr;" withString:@"↓"];
    string = [string stringByReplacingOccurrencesOfString:@"&uarr;" withString:@"↑"];
    string = [string stringByReplacingOccurrencesOfString:@"&hellip;" withString:@"…"];
    string = [string stringByReplacingOccurrencesOfString:@"&infin;" withString:@"∞"];
    string = [string stringByReplacingOccurrencesOfString:@"&mu;" withString:@"μ"];
    string = [string stringByReplacingOccurrencesOfString:@"&#39;" withString:@"'"];
    string = [string stringByReplacingOccurrencesOfString:@"&ldquo;" withString:@"“"];
    string = [string stringByReplacingOccurrencesOfString:@"&rdquo;" withString:@"”"];
    string = [string stringByReplacingOccurrencesOfString:@"&quot;" withString:@"“"];
    string = [string stringByReplacingOccurrencesOfString:@"&middot;" withString:@"·"];
    string = [string stringByReplacingOccurrencesOfString:@"&minus;" withString:@"−"];
    string = [string stringByReplacingOccurrencesOfString:@"&times;" withString:@"×"];
    string = [string stringByReplacingOccurrencesOfString:@"&rsquo;" withString:@"’"];
    return string;
}
@end