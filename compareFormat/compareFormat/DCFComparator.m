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
  NSLog(@"\t%18s: %20s %10s %20s", "Comparator", "Encoding time", "data size", "Decoding time" );
  for (DCFTestObject *testObject in dictionaryObjects) {
    NSDictionary *dictObject = testObject.object;
    NSLog(@"Object Info: %@", testObject.info);
    for (DCFComparingFormat *comparator in comparatorList) {
      
      startEncode = [NSDate date];
      NSData *data = [comparator encode:dictObject];
      endEncode = [NSDate date];
      
      
      startParse = [NSDate date];
      NSDictionary *dictRec = (NSDictionary *)[comparator parseData:data];
      endParse = [NSDate date];
      
      NSLog(@"\t%15s: %20f %10d %20f", [[comparator info] cStringUsingEncoding:NSASCIIStringEncoding], [endEncode timeIntervalSinceDate:startEncode], [data length], [endParse timeIntervalSinceDate:startParse]);

      NSAssert([dictObject isEqualToDictionary:dictRec], @"generated objects are not equal!");
    }    
  }
  
}

@end
