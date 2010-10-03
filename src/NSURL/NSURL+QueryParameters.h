//
//  NSURL+QueryParameters.h
//
//  Created by Geoff Garside on 03/10/2010.
//  Copyright (c) 2010 Geoff Garside. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSURL (QueryParameters)
/*!
 * Splits the query string of the receiver into a dictionary of parameters.
 *
 * \return Dictionary of query parameters
 * \sa query
 */
- (NSDictionary *)queryParameters;
@end
