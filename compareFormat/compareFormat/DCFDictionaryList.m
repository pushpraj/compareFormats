//
//  DCFDictionaryList.m
//  compareFormat
//
//  Created by pushpraj agrawal on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DCFDictionaryList.h"
#import "JSONKit.h"

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
  
  [dictionaryList addObject:[self contactGroupObject]];
  [dictionaryList addObject:[self sectionObject]];
  [dictionaryList addObject:[self hugeUserInfoObject]];
  return dictionaryList;
}

+ (DCFTestObject *)contactGroupObject {
  DCFTestObject *testObject = [[[DCFTestObject alloc] init] autorelease];
  testObject.info = @"contactGroup Dictionary";
  NSString *data = @"{\"name\":\"contactGroup\",\"id\":\"b5e2007c95c6d724\",\"version\":1340186515774,\"contacts\":[{\"user\":\"test@gmail.com\",\"service\":\"gtalk\",\"contact\":\"4885@gmail.com\",\"subs\":\"from\",\"name\":\"Pushp\",\"vcard\":{\"FN\":\"Pushp agrawal\"}}]}";
  testObject.object = [data objectFromJSONString];
  return testObject;
}

+ (DCFTestObject *)sectionObject {
  DCFTestObject *testObject = [[[DCFTestObject alloc] init] autorelease];
  testObject.info = @"section Dictionary";
  NSString *data = @"{\"name\":\"section\",\"id\":\"92323fa1-f8d7-4798-8408\",\"count\":0}";
  testObject.object = [data objectFromJSONString];
  return testObject;
}

+ (DCFTestObject *)hugeUserInfoObject {
  DCFTestObject *testObject = [[[DCFTestObject alloc] init] autorelease];
  testObject.info = @"hugeUserInfo Dictionary";
  NSString *data = @"{\"name\":\"userInfo\",\"userHandle\":\"user_1\",\"Id\":\"2\",\"token\":\"33136672541420149928\",\"accounts\":[{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"}, {\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"},{\"id\":\"user_1@directi.com\",\"service\":\"pp\",\"password\":\"letmein\"},{\"id\":\"test@gmail.com\",\"service\":\"gt\",\"password\":\"talkto\"},{\"id\":\"5e2c2fbd1aa2905@talk.to\",\"service\":\"tt\",\"password\":\"idontknow\",\"handle\":\"user_1\"}]}";
  testObject.object = [data objectFromJSONString];
  return testObject;
}

@end
