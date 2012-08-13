//
//  DCFCompareWithCompressedJSONKit.m
//  compareFormat
//
//  Created by pushpraj agrawal on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DCFCompareWithCompressedJSONKit.h"
#import "JSONKit.h"

@implementation DCFCompareWithCompressedJSONKit {
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
  return [dictionary JSONDataWithOptions:JKSerializeOptionCompress error:nil];
}

- (NSString *)info {
  return @"JSONKit+gzip";
}

@end
