//
//  DCFComparingFormat.m
//  compareFormat
//
//  Created by pushpraj agrawal on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DCFComparingFormat.h"
#import "DCFCompareWithJSONKit.h"
#import "DCFCompareWithMessagePack.h"

@implementation DCFComparingFormat

+ (NSArray *)allFormats {
  NSMutableArray *array = [NSMutableArray array];
  [array addObject:[[[DCFCompareWithJSONKit alloc] init] autorelease]];
  [array addObject:[[[DCFCompareWithMessagePack alloc] init] autorelease]];
  return array;
}

- (id)parseData:(NSData *)data {
  abort();
}

- (NSData *)encode:(NSDictionary *)dictionary {
  abort();
}

- (NSString *)info {
  abort();
}

@end
