//
//  DCFCompareWithPList.m
//  compareFormat
//
//  Created by pushpraj agrawal on 7/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DCFCompareWithPList.h"

@implementation DCFCompareWithPList

- (id)parseData:(NSData *)data {
  return [NSPropertyListSerialization propertyListWithData:data options:NSPropertyListImmutable format:NULL error:nil];
}

- (NSData *)encode:(NSDictionary *)dictionary {
  NSError *error;
  NSData *data = [NSPropertyListSerialization dataWithPropertyList:dictionary format:NSPropertyListBinaryFormat_v1_0 options:0 error:&error];
  if (data == nil) {
    NSLog(@"Error: %@",error);
  }
  return data;
}

- (NSString *)info {
  return @"Binary-pList";
}

@end
