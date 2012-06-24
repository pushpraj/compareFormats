//
//  DCFComparator.m
//  compareFormat
//
//  Created by pushpraj agrawal on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DCFComparator.h"
#import "DCFDictionaryList.h"
#import "DCFComparingFormat.h"

@implementation DCFComparator

+ (void)compare {
  
  
  NSArray *dictionaryObjects = [DCFDictionaryList dictionaryList];
  NSArray *comparatorList = [DCFComparingFormat allFormats];
  for (NSDictionary *dictObject in dictionaryObjects) {
    for (DCFComparingFormat *comparator in comparatorList) {
      NSData *data = [comparator encode:dictObject];
      NSLog(@"data length: %d", [data length]);
      NSDictionary *dictRec = (NSDictionary *)[comparator parseData:data];
      
      if ([dictObject isEqualToDictionary:dictRec]) {
        NSLog(@"Objects are equal");
      } else {
        NSLog(@"Objects not equal");
      }
    }    
  }
  
}

@end
