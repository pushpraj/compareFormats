//
//  DCFBreakDownList.m
//  compareFormat
//
//  Created by pushpraj agrawal on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DCFBreakDownList.h"
#import "JSONKit.h"

@implementation DCFBreakDownObject

@synthesize bigDict;
@synthesize brokenDict;
@synthesize info;

@end

@implementation DCFBreakDownList

+ (NSArray *)allBreakDownObjects {
  NSMutableArray *array = [NSMutableArray array];
  [array addObject:[self rosterObject]];
  return array;
}


+ (DCFBreakDownObject *)rosterObject {
  NSString *data = @"{\"name\":\"userInfo\",\"userHandle\":\"user_1\",\"Id\":\"2\",\"token\":\"33136672541420149928\",\"accounts\":[{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"}, {\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"}]}";
  NSDictionary *dict = [data objectFromJSONString];

  DCFBreakDownObject *breakDownObject = [[[DCFBreakDownObject alloc] init] autorelease];
  breakDownObject.bigDict = dict;
  NSMutableArray *brokenDict = [NSMutableArray arrayWithArray:[dict objectForKey:@"accounts"]];
  [brokenDict addObject:[@"{\"name\":\"start\",\"id\":\"user_1\",\"token\":\"33136672541420149928\"}" objectFromJSONString]];
  [brokenDict addObject:[@"{\"name\":\"end\",\"id\":\"user_1\"}" objectFromJSONString]];
  breakDownObject.brokenDict = brokenDict;
  breakDownObject.info = @"Accounts List";
  return breakDownObject;
}

@end
