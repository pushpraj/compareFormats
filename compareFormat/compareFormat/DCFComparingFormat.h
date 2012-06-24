//
//  DCFComparingFormat.h
//  compareFormat
//
//  Created by pushpraj agrawal on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCFComparingFormat : NSObject

+ (NSArray *)allFormats;

- (id)parseData:(NSData *)data;
- (NSData *)encode:(NSDictionary *)dictionary;

@end
