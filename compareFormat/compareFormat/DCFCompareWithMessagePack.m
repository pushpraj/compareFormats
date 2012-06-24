//
//  DCFCompareWithMessagePack.m
//  compareFormat
//
//  Created by pushpraj agrawal on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DCFCompareWithMessagePack.h"
#import "MessagePackPacker.h"
#import "MessagePackParser.h"

@implementation DCFCompareWithMessagePack

- (id)parseData:(NSData *)data {
  return [MessagePackParser parseData:data];
}

- (NSData *)encode:(NSDictionary *)dictionary {
  return [MessagePackPacker pack:dictionary];
}

@end
