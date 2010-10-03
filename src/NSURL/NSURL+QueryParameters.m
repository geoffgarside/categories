//
//  NSURL+QueryParameters.m
//
//  Created by Geoff Garside on 03/10/2010.
//  Copyright (c) 2010 Geoff Garside. All rights reserved.
//

#import "NSURL+QueryParameters.h"


@implementation NSURL (QueryParameters)
- (NSDictionary *)queryParameters {
    NSArray *pairs = [[self query] componentsSeparatedByString:@"&"];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:[pairs count]];

    for ( NSString *pair in pairs ) {
        NSArray *kv = [pair componentsSeparatedByString:@"="];
        [dict setObject:[kv objectAtIndex:1] forKey:[kv objectAtIndex:0]];
    }

    return [dict copy];
}
@end
