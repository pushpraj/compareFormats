//
//  DCFSizeComparator.m
//  compareFormat
//
//  Created by pushpraj agrawal on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DCFSizeComparator.h"
#import "DCFBreakDownList.h"
#import "DCFComparingFormat.h"

@implementation DCFSizeComparator

+ (void) compare {
  NSArray *dictionaryObjects = [DCFBreakDownList allBreakDownObjects];
  NSArray *comparatorList = [DCFComparingFormat allFormats];
  NSDate *startEncode, *endEncode, *startParse, *endParse;
  NSLog(@"Size comparator\n===========\n");
  NSLog(@"\t%18s: %20s %10s %20s", "Comparator", "Encoding time", "data size", "Decoding time" );
  for (DCFBreakDownObject *testObject in dictionaryObjects) {
    NSDictionary *bigDictObject = testObject.bigDict;
    NSArray *brokenDictArray = testObject.brokenDict;
    NSLog(@"Object Info: %@", testObject.info);
    for (DCFComparingFormat *comparator in comparatorList) {
      
      NSLog(@"Big Object:");
      startEncode = [NSDate date];
      NSData *data = [comparator encode:bigDictObject];
      endEncode = [NSDate date];
      
      
      startParse = [NSDate date];
      NSDictionary *dictRec = (NSDictionary *)[comparator parseData:data];
      endParse = [NSDate date];
      
      NSLog(@"\t%15s: %20f %10d %20f", [[comparator info] cStringUsingEncoding:NSASCIIStringEncoding], [endEncode timeIntervalSinceDate:startEncode], [data length], [endParse timeIntervalSinceDate:startParse]);
      
      NSAssert([bigDictObject isEqualToDictionary:dictRec], @"generated objects are not equal!");
      
      NSTimeInterval encodeInterval = 0, parseInterval = 0;
      int size = 0;

      NSLog(@"Broken Object:");

      for (NSDictionary *brokenDictObject in brokenDictArray) {
        startEncode = [NSDate date];
        NSData *data = [comparator encode:brokenDictObject];
        endEncode = [NSDate date];
        encodeInterval += [endEncode timeIntervalSinceDate:startEncode];
        
        startParse = [NSDate date];
        NSDictionary *dictRec = (NSDictionary *)[comparator parseData:data];
        endParse = [NSDate date];
        parseInterval += [endParse timeIntervalSinceDate:startParse];
        
        size += [data length];
        NSAssert([brokenDictObject isEqualToDictionary:dictRec], @"generated objects are not equal!");
      }
      NSLog(@"\t%15s: %20f %10d %20f", [[comparator info] cStringUsingEncoding:NSASCIIStringEncoding], encodeInterval, size, parseInterval);        
    }    
  }
}
@end
