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
  for (DCFTestObject *testObject in dictionaryObjects) {
    NSDictionary *dictObject = testObject.object;
    NSLog(@"Object Info: %@", testObject.info);
    for (DCFComparingFormat *comparator in comparatorList) {
      NSLog(@"\tcomparator: %@", [comparator info]);
      NSData *data = [comparator encode:dictObject];
      NSLog(@"\t\tdata length: %d", [data length]);
      NSDictionary *dictRec = (NSDictionary *)[comparator parseData:data];
      
      NSAssert([dictObject isEqualToDictionary:dictRec], @"generated objects are not equal!");
    }    
  }
  
}

@end
