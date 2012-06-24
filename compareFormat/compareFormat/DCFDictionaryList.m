//
//  DCFDictionaryList.m
//  compareFormat
//
//  Created by pushpraj agrawal on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DCFDictionaryList.h"

@implementation DCFDictionaryList

+ (NSArray *)dictionaryList {

  NSMutableArray *dictionaryList = [NSMutableArray array];
  
  NSDictionary *emptyDictionary = [NSDictionary dictionary];
  [dictionaryList addObject:emptyDictionary];
  
  return dictionaryList;
}
@end
