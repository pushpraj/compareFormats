//
//  DCFDictionaryList.m
//  compareFormat
//
//  Created by pushpraj agrawal on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DCFDictionaryList.h"

@implementation DCFTestObject

@synthesize object;
@synthesize info;

@end

@implementation DCFDictionaryList

+ (NSArray *)dictionaryList {

  NSMutableArray *dictionaryList = [NSMutableArray array];
  
  DCFTestObject *testObject = [[[DCFTestObject alloc] init] autorelease];
  testObject.info = @"empty Dictionary";
  testObject.object = [NSDictionary dictionary];
  [dictionaryList addObject:testObject];
  
  return dictionaryList;
}
@end
