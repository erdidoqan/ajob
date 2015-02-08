//
//  NSString+Html.h
//  ajob
//
//  Created by Erdi Dogan on 8.02.2015.
//  Copyright (c) 2015 Erdi Dogan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (HTML)
-(NSString *) stringByStrippingHTML;
-(NSString *) stringByStrippingLOGO;
@end