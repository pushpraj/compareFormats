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
  NSDate *startEncode, *endEncode, *startParse, *endParse;
  for (DCFTestObject *testObject in dictionaryObjects) {
    NSDictionary *dictObject = testObject.object;
    NSLog(@"Object Info: %@", testObject.info);
    for (DCFComparingFormat *comparator in comparatorList) {
      NSLog(@"\tcomparator: %@", [comparator info]);
      
      startEncode = [NSDate date];
      NSData *data = [comparator encode:dictObject];
      endEncode = [NSDate date];
      NSLog(@"\t\tencoding time: %f", [endEncode timeIntervalSinceDate:startEncode]);
      
      NSLog(@"\t\tdata length: %d", [data length]);
      
      startParse = [NSDate date];
      NSDictionary *dictRec = (NSDictionary *)[comparator parseData:data];
      endParse = [NSDate date];
      NSLog(@"\t\tParsing time: %f", [endParse timeIntervalSinceDate:startParse]);
      
      NSAssert([dictObject isEqualToDictionary:dictRec], @"generated objects are not equal!");
    }    
  }
  
}

@end
