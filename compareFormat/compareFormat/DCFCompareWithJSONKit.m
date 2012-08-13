//
//  DCFCompareWithJSONKit.m
//  compareFormat
//
//  Created by pushpraj agrawal on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DCFCompareWithJSONKit.h"
#import "JSONKit.h"

@implementation DCFCompareWithJSONKit {
  JSONDecoder *decoder;
}

- (id)init {
  self = [super init];
  decoder = [[JSONDecoder alloc] init];
  return self;
}

- (id)parseData:(NSData *)data {
  return [decoder objectWithData:data];
}

- (NSData *)encode:(NSDictionary *)dictionary {
  return [dictionary JSONData];
}

- (NSString *)info {
  return @"JSONKit";
}

@end
