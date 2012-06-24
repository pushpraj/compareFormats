//
//  DCFCompareWithJSONKit.m
//  compareFormat
//
//  Created by pushpraj agrawal on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DCFCompareWithJSONKit.h"
#import "JSONKit.h"

@implementation DCFCompareWithJSONKit


- (id)parseData:(NSData *)data {
  return [data objectFromJSONData];
}

- (NSData *)encode:(NSDictionary *)dictionary {
  return [dictionary JSONData];
}

@end
